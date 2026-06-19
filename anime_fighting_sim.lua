-- ═══════════════════════════════════════════════════════════════════════════════
-- Devilish Scripts — AFS (Anime Fighting Simulator)
-- Features: Auto Train, Auto Boss + Skills, Auto Adventure
-- ═══════════════════════════════════════════════════════════════════════════════
if _G.AFS_LOADED then
    pcall(function() if _G.AFSMain then _G.AFSMain.close() end end)
end
_G.AFS_LOADED = true

-- ─── Services ────────────────────────────────────────────────────────────────
local RS          = game:GetService("ReplicatedStorage")
local Players     = game:GetService("Players")
local UIS         = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local PL          = Players.LocalPlayer

local function jitter(base, pct)
    return base * (1 + (math.random() - 0.5) * pct)
end

-- ─── Root ScreenGui (main thread — before any require) ───────────────────────
local g = Instance.new("ScreenGui")
g.ResetOnSpawn   = false
g.Name           = "AFSMain"
g.IgnoreGuiInset = true
g.Parent         = (gethui and gethui()) or PL.PlayerGui

-- ─── Anti-AFK ────────────────────────────────────────────────────────────────
pcall(function()
    for _, connection in pairs(getconnections(PL.Idled)) do
        if connection["Disable"] then connection["Disable"](connection)
        elseif connection["Disconnect"] then connection["Disconnect"](connection) end
    end
end)
task.spawn(function()
    while true do
        task.wait(60)
        pcall(function()
            local VU = game:GetService("VirtualUser")
            VU:CaptureController()
            VU:ClickButton2(Vector2.new())
        end)
    end
end)

-- ─── State Persistence ───────────────────────────────────────────────────────
local STATE_FILE = "afs_state.json"
local function loadState()
    local ok, data = pcall(function() return HttpService:JSONDecode(readfile(STATE_FILE)) end)
    return (ok and type(data) == "table") and data or {}
end
local function saveState(s)
    pcall(function() writefile(STATE_FILE, HttpService:JSONEncode(s)) end)
end
local savedState = loadState()

-- ─── ClientEvents Loader ─────────────────────────────────────────────────────
local ClientEvents = nil
task.spawn(function()
    for _ = 1, 30 do
        local ok, mod = pcall(function()
            return require(RS:WaitForChild("Generated", 5):WaitForChild("_ClientEvents", 5))
        end)
        if ok and mod then
            ClientEvents = mod
            local count = 0
            for _ in pairs(mod) do count += 1 end
            break
        end
        task.wait(1)
    end
    if not ClientEvents then end
end)

-- ─── Zap Helpers ─────────────────────────────────────────────────────────────
local _zapErrorLog = {} -- deduplicate error spam

local function zapFire(event, ...)
    if not event then return false end
    if type(event) == "table" and type(rawget(event, "fire")) == "function" then
        local ok, err = pcall(event.fire, ...)
        if not ok then _zapErrorLog[tostring(err)] = true end
        return ok
    end
    if type(event) == "table" and type(rawget(event, "Fire")) == "function" then
        return pcall(event.Fire, event, ...)
    end
    return pcall(event, ...)
end

local function zapCall(event, ...)
    if not event or type(event) ~= "table" then return false, nil end
    local fn = rawget(event, "call") or rawget(event, "Call")
    if type(fn) ~= "function" then return false, nil end
    local results = {pcall(fn, ...)}
    local ok = table.remove(results, 1)
    if not ok then _zapErrorLog[tostring(results[1])] = true end
    return ok, unpack(results)
end

local function zapListen(event, callback)
    if not event or type(event) ~= "table" then return end
    local fn = rawget(event, "setCallback") or rawget(event, "SetCallback")
    if type(fn) == "function" then
        pcall(fn, callback)
    end
end

-- ─── Utility ─────────────────────────────────────────────────────────────────
local function getHRP()
    local char = PL.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function teleportTo(cf)
    local hrp = getHRP()
    if hrp then hrp.CFrame = cf end
end

-- ─── Player State Reader (GC scan) ──────────────────────────────────────────
local STAT_TYPES = {"Strength", "Durability", "Chakra", "Sword", "Speed", "Agility"}
local _cachedStats = {}
local _statsLastScan = 0

local function scanPlayerStats()
    if tick() - _statsLastScan < 10 then return _cachedStats end
    _statsLastScan = tick()
    local collected = {}
    for _, name in ipairs(STAT_TYPES) do collected[name] = 0 end
    pcall(function()
        local gc = getgc(true)
        for i = 1, #gc do
            local obj = gc[i]
            if type(obj) ~= "table" then continue end
            for j = 1, #STAT_TYPES do
                local name = STAT_TYPES[j]
                local entry = rawget(obj, name)
                if type(entry) == "table" then
                    local v = rawget(entry, "Stat") or rawget(entry, "Value")
                    if type(v) == "number" and v > collected[name] then
                        collected[name] = v
                    end
                end
            end
        end
    end)
    _cachedStats = collected
    return _cachedStats
end

-- ─── VIM Key Helper ───────────────────────────────────────────────────────────
local function pressKey(keyCode)
    pcall(function()
        local vim = game:GetService("VirtualInputManager")
        vim:SendKeyEvent(true, keyCode, false, game)
        task.delay(0.05, function()
            pcall(function() vim:SendKeyEvent(false, keyCode, false, game) end)
        end)
    end)
end

-- ─── Feature: Auto Train ─────────────────────────────────────────────────────
-- Zap trains 5 stats simultaneously. Chakra via key 3 (once on enable).
-- Cycles through highest unlocked training zone per stat every 20s.
-- When boss takes over: press key 4 (Sword). When training resumes: press key 3.
do
    local active = false
    local selectedStat = "All"
    local currentStat = "All"
    local statIdx = 1
    local statusText = "Idle"
    local chakraActive = false -- true = key 3 was pressed, Chakra training on
    local wasFighting = false  -- track boss state transitions

    local function simulateClick()
        pcall(function()
            local VU = game:GetService("VirtualUser")
            VU:CaptureController()
            VU:ClickButton1(Vector2.new(
                workspace.CurrentCamera.ViewportSize.X / 2,
                workspace.CurrentCamera.ViewportSize.Y / 2
            ))
        end)
    end

    local function enableChakra()
        if chakraActive then return end
        chakraActive = true
        pressKey(Enum.KeyCode.Three)
    end

    local function disableChakra()
        if not chakraActive then return end
        chakraActive = false
        pressKey(Enum.KeyCode.Three) -- toggle off
    end

    -- Zap train all stats simultaneously (5 via Zap, Chakra via key 3 already active)
    local function trainAllStats()
        if not ClientEvents then return end
        for _, stat in ipairs(STAT_TYPES) do
            if stat ~= "Chakra" then
                zapFire(ClientEvents.equipStat, stat)
                zapFire(ClientEvents.trainPassiveStat, stat)
                task.spawn(zapCall, ClientEvents.trainActiveStat, stat)
            end
        end
        simulateClick()
    end

    local function trainSingleStat(stat)
        if not ClientEvents then return end
        if stat ~= "Chakra" then
            zapFire(ClientEvents.equipStat, stat)
            zapFire(ClientEvents.trainPassiveStat, stat)
            task.spawn(zapCall, ClientEvents.trainActiveStat, stat)
        end
        simulateClick()
    end

    -- ─── Zone Discovery ──────────────────────────────────────────────────────
    local function parseTier(name)
        local num, suffix = name:match("([%d%.]+)([KkMmBbTt]?)")
        if not num then return 0 end
        num = tonumber(num) or 0
        suffix = (suffix or ""):upper()
        if suffix == "K" then num *= 1e3
        elseif suffix == "M" then num *= 1e6
        elseif suffix == "B" then num *= 1e9
        elseif suffix == "T" then num *= 1e12 end
        return num
    end

    local _statZones = {}
    local _zonesScanDone = false

    local function scanAllZones()
        if _zonesScanDone then return end
        _zonesScanDone = true
        for _, stat in ipairs(STAT_TYPES) do _statZones[stat] = {} end
        pcall(function()
            -- Find the training zones folder — only match direct children (actual zone models)
            local folders = {}
            local function tryPath(...)
                local cur = workspace
                for _, name in ipairs({...}) do
                    cur = cur:FindFirstChild(name)
                    if not cur then return end
                end
                table.insert(folders, cur)
            end
            tryPath("Map", "Zones", "Training")
            tryPath("Map", "Zones")
            tryPath("Map", "Training")
            tryPath("Zones", "Training")
            tryPath("Zones")
            tryPath("Training")

            for _, folder in ipairs(folders) do
                -- Only direct children — not deep descendants that could be random parts
                for _, child in ipairs(folder:GetChildren()) do
                    local name = child.Name
                    for _, stat in ipairs(STAT_TYPES) do
                        if name:lower():find(stat:lower()) then
                            table.insert(_statZones[stat], {
                                zone = child,
                                tier = parseTier(name),
                                name = name,
                            })
                        end
                    end
                end
            end
        end)
        -- Sort highest tier first
        for stat, zones in pairs(_statZones) do
            table.sort(zones, function(a, b) return a.tier > b.tier end)
        end
        -- Log
        for _, stat in ipairs(STAT_TYPES) do
            local names = {}
            for _, z in ipairs(_statZones[stat]) do table.insert(names, z.name) end
        end
    end

    local _lockedZones = {}
    local _bestZoneCache = {} -- [stat] = zone (cached when stats are valid)

    local function getBestZone(stat)
        scanAllZones()
        local zones = _statZones[stat]
        if not zones or #zones == 0 then return _bestZoneCache[stat] end
        local stats = scanPlayerStats()
        local level = stats[stat] or 0
        -- If stat scan failed (0), use cached best zone
        if level <= 0 and _bestZoneCache[stat] then
            return _bestZoneCache[stat]
        end
        for _, z in ipairs(zones) do
            if z.tier <= level and not _lockedZones[z.name] then
                _bestZoneCache[stat] = z
                return z
            end
        end
        -- Fallback: use cache if available, else lowest unlocked
        if _bestZoneCache[stat] then return _bestZoneCache[stat] end
        for i = #zones, 1, -1 do
            if not _lockedZones[zones[i].name] then return zones[i] end
        end
        return zones[#zones]
    end

    local _lastZoneLog = {}
    local function teleportToZone(stat)
        local best = getBestZone(stat)
        if not best then
            statusText = stat .. " (no zone)"
            return false
        end
        if _lastZoneLog[stat] ~= best.name then
            _lastZoneLog[stat] = best.name
            local stats = scanPlayerStats()
        end
        pcall(function()
            -- Use GetPivot for Models (center of model), CFrame+up for parts
            local cf
            if best.zone:IsA("Model") then
                cf = best.zone:GetPivot()
            else
                cf = best.zone.CFrame
            end
            teleportTo(cf + Vector3.new(0, 5, 0))
        end)
        -- Locked zone detection: check 1.5s later if we got bounced
        task.delay(1.5, function()
            pcall(function()
                local hrp = getHRP()
                if not hrp then return end
                local targetPos = best.zone:IsA("Model") and best.zone:GetPivot().Position or best.zone.Position
                if (hrp.Position - targetPos).Magnitude > 100 then
                    _lockedZones[best.name] = true
                    _lastZoneLog[stat] = nil
                end
            end)
        end)
        statusText = stat .. " @ " .. best.name
        return true
    end

    task.spawn(function()
        while true do
            if not active then task.wait(0.5); continue end
            if not ClientEvents then task.wait(1); continue end

            local isFighting = _G.AutoBoss and _G.AutoBoss.isFighting and _G.AutoBoss.isFighting()

            -- Boss state transitions
            if isFighting and not wasFighting then
                -- Training → Boss: disable Chakra (Sword handled by Auto Boss)
                disableChakra()
                wasFighting = true
            elseif not isFighting and wasFighting then
                -- Boss → Training: re-enable Chakra
                enableChakra()
                wasFighting = false
            end

            if isFighting then
                statusText = "Paused (Boss)"
                task.wait(1)
                continue
            end

            pcall(function()
                if selectedStat == "All" then
                    local zoneStat = STAT_TYPES[statIdx]
                    currentStat = zoneStat
                    teleportToZone(zoneStat)
                    trainAllStats()

                    local zoneEnd = tick() + 20
                    while active and tick() < zoneEnd do
                        if _G.AutoBoss and _G.AutoBoss.isFighting and _G.AutoBoss.isFighting() then break end
                        trainAllStats()
                        task.wait(jitter(0.5, 0.2))
                    end
                    statIdx = (statIdx % #STAT_TYPES) + 1
                else
                    currentStat = selectedStat
                    teleportToZone(selectedStat)
                    local zoneEnd = tick() + 20
                    while active and tick() < zoneEnd do
                        if _G.AutoBoss and _G.AutoBoss.isFighting and _G.AutoBoss.isFighting() then break end
                        trainSingleStat(selectedStat)
                        task.wait(jitter(0.5, 0.2))
                    end
                end
            end)
            task.wait(0.1)
        end
    end)

    _G.AutoTrain = {
        enable = function()
            active = true
            wasFighting = false
            enableChakra()
        end,
        disable = function()
            active = false
            disableChakra()
            statusText = "Idle"
        end,
        toggle   = function(v) if v == nil then v = not active end; if v then _G.AutoTrain.enable() else _G.AutoTrain.disable() end end,
        isActive = function() return active end,
        setStat  = function(s) selectedStat = s or "All"; statIdx = 1 end,
        getStat  = function() return currentStat end,
        getStatus = function() return statusText end,
    }
end

-- ─── Feature: Auto Boss ──────────────────────────────────────────────────────
do
    local active = false
    local fighting = false
    local killCount = 0
    local currentTarget = "None"
    local statusText = "Idle"
    local lastBossId = nil

    -- ─── Entity Tracking (via Zap callbacks) ─────────────────────────────────
    local trackedEntities = {} -- [id] = {name, pos, health, maxHealth}
    local WORLD_BOSS_NAMES = {"armored titan", "great ape", "crocodile"}

    local function isBossName(name)
        local lower = name:lower()
        for _, boss in ipairs(WORLD_BOSS_NAMES) do
            if lower:find(boss, 1, true) or lower:gsub("[_%s]", "") == boss:gsub("%s", "") then
                return true
            end
        end
        return false
    end

    task.spawn(function()
        while not ClientEvents do task.wait(1) end

        -- spawnEntities: 7 parallel arrays (ids, names, instances, positions, ?, health, maxHealth)
        zapListen(ClientEvents.spawnEntities, function(ids, names, instances, positions, _, healths, maxHealths)
            if type(ids) ~= "table" then return end
            for i = 1, #ids do
                local id = ids[i]
                if not id then continue end
                local name = names and names[i] and tostring(names[i]) or "Unknown"
                local hp = maxHealths and maxHealths[i] or 0
                trackedEntities[id] = {
                    name = name,
                    pos = positions and positions[i] or nil,
                    health = healths and healths[i] or 0,
                    maxHealth = hp,
                    lastSeen = tick(),
                }
                if isBossName(name) then
                end
            end
        end)

        -- replicateEntityHealths: 3 parallel arrays (ids, currentHP, maxHP)
        -- Track ALL entities (not just spawned ones) so pre-existing bosses get picked up
        zapListen(ClientEvents.replicateEntityHealths, function(ids, healths, maxHealths)
            if type(ids) ~= "table" then return end
            for i = 1, #ids do
                local id = ids[i]
                if not id then continue end
                if not trackedEntities[id] then
                    trackedEntities[id] = { name = "", pos = nil, health = 0, maxHealth = 0, lastSeen = 0 }
                end
                trackedEntities[id].lastSeen = tick()
                if healths and healths[i] then
                    trackedEntities[id].health = healths[i]
                    -- Instant boss death detection when HP hits 0
                    if healths[i] <= 0 and isBossName(trackedEntities[id].name) then
                        trackedEntities[id] = nil
                    end
                end
                if maxHealths and maxHealths[i] then trackedEntities[id].maxHealth = maxHealths[i] end
            end
        end)

        -- replicateEntities: {ids, positions, rotations} — position updates
        zapListen(ClientEvents.replicateEntities, function(data)
            if type(data) ~= "table" then return end
            local eids = data.ids
            local epos = data.positions
            if type(eids) ~= "table" or type(epos) ~= "table" then return end
            for i = 1, #eids do
                local id = eids[i]
                if not id then continue end
                if not trackedEntities[id] then
                    trackedEntities[id] = { name = "", pos = nil, health = 0, maxHealth = 0, lastSeen = 0 }
                end
                trackedEntities[id].lastSeen = tick()
                if epos[i] then trackedEntities[id].pos = epos[i] end
            end
        end)

    end)

    -- Name unnamed entities by matching positions to ClientEntities models
    local _lastNameScan = 0
    local function nameUnnamedEntities()
        if tick() - _lastNameScan < 3 then return end
        _lastNameScan = tick()
        pcall(function()
            local ce = workspace:FindFirstChild("ClientEntities")
            if not ce then return end
            for _, model in ipairs(ce:GetChildren()) do
                if not model:IsA("Model") then continue end
                local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                if not part then continue end
                local modelPos = part.Position
                for id, ent in pairs(trackedEntities) do
                    if ent.name == "" and ent.pos then
                        local entPos = typeof(ent.pos) == "Vector3" and ent.pos
                            or Vector3.new(ent.pos.X or 0, ent.pos.Y or 0, ent.pos.Z or 0)
                        if (modelPos - entPos).Magnitude < 20 then
                            ent.name = model.Name
                            if isBossName(model.Name) then
                            end
                        end
                    end
                end
            end
        end)
    end

    -- Get boss spawn positions (permanent markers)
    local _bossSpawns = {} -- {name, pos}
    local function loadBossSpawns()
        if #_bossSpawns > 0 then return end
        pcall(function()
            local spawns = workspace:FindFirstChild("Spawns")
            local bossFolder = spawns and spawns:FindFirstChild("Bosses")
            if not bossFolder then return end
            for _, child in ipairs(bossFolder:GetChildren()) do
                if child:IsA("BasePart") and isBossName(child.Name) then
                    table.insert(_bossSpawns, { name = child.Name, pos = child.Position })
                end
            end
        end)
    end

    local STALE_TIMEOUT = 15 -- seconds without update = entity dead/gone

    local function findBoss()
        nameUnnamedEntities()
        loadBossSpawns()

        -- Clean up stale boss entities (server stopped sending updates = dead)
        local now = tick()
        for id, ent in pairs(trackedEntities) do
            if isBossName(ent.name) and ent.lastSeen and (now - ent.lastSeen) > STALE_TIMEOUT then
                trackedEntities[id] = nil
            end
        end

        -- 1. Check tracked entities that already have a boss name
        for id, ent in pairs(trackedEntities) do
            if ent.health > 0 and isBossName(ent.name) then
                return id, ent
            end
        end

        -- 2. Match unnamed entities to boss spawn points (entity must be near a spawn)
        for _, spawn in ipairs(_bossSpawns) do
            local bestId, bestDist = nil, 200
            for id, ent in pairs(trackedEntities) do
                if ent.health > 0 and ent.pos and ent.name == "" then
                    local entPos = typeof(ent.pos) == "Vector3" and ent.pos
                        or Vector3.new(ent.pos.X or 0, ent.pos.Y or 0, ent.pos.Z or 0)
                    local dist = (spawn.pos - entPos).Magnitude
                    if dist < bestDist then
                        bestDist = dist
                        bestId = id
                    end
                end
            end
            if bestId then
                trackedEntities[bestId].name = spawn.name
                return bestId, trackedEntities[bestId]
            end
        end

        -- 3. Check ClientEntities (boss model appears when nearby)
        pcall(function()
            local ce = workspace:FindFirstChild("ClientEntities")
            if not ce then return end
            for _, model in ipairs(ce:GetChildren()) do
                if model:IsA("Model") and isBossName(model.Name) then
                    local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                    if part then
                        -- Match to nearest entity
                        local bestId, bestDist = nil, 50
                        for id, ent in pairs(trackedEntities) do
                            if ent.pos and ent.health > 0 then
                                local entPos = typeof(ent.pos) == "Vector3" and ent.pos
                                    or Vector3.new(ent.pos.X or 0, ent.pos.Y or 0, ent.pos.Z or 0)
                                local dist = (part.Position - entPos).Magnitude
                                if dist < bestDist then bestDist = dist; bestId = id end
                            end
                        end
                        if bestId then
                            trackedEntities[bestId].name = model.Name
                            return bestId, trackedEntities[bestId]
                        end
                    end
                end
            end
        end)

        return nil, nil
    end

    -- ─── Auto Skills (VIM key presses, active during boss fights) ────────────
    local _skillKeys = {} -- discovered keybinds (Enum.KeyCode values)
    local _skillsLastScan = 0

    -- Discover skill keybinds from PlayerGui (rescans every 10s)
    local function scanSkillKeybinds()
        if tick() - _skillsLastScan < 10 then return end
        _skillsLastScan = tick()
        local keys = {}
        local seen = {}
        pcall(function()
            for _, obj in ipairs(PL.PlayerGui:GetDescendants()) do
                if obj:IsA("TextLabel") and obj.Name == "Key" and #obj.Text == 1 then
                    local parent = obj.Parent
                    if not parent then continue end
                    local pName = parent.Name:lower()
                    if pName == "hotbar" or pName == "strength" or pName == "durability"
                        or pName == "chakra" or pName == "sword" or pName == "speed" or pName == "agility" then
                        continue
                    end
                    local letter = obj.Text:upper()
                    if letter:match("^[A-Z]$") and not seen[letter] then
                        seen[letter] = true
                        local kc = Enum.KeyCode[letter]
                        if kc then table.insert(keys, kc) end
                    end
                end
            end
        end)
        if #keys > 0 then
            local changed = #keys ~= #_skillKeys
            if not changed then
                for i, k in ipairs(keys) do
                    if _skillKeys[i] ~= k then changed = true; break end
                end
            end
            _skillKeys = keys
            if changed then
                local names = {}
                for _, k in ipairs(keys) do table.insert(names, k.Name) end
            end
        end
    end

    local function spamSkills()
        if not fighting then return end
        scanSkillKeybinds()
        for _, keyCode in ipairs(_skillKeys) do
            pressKey(keyCode)
        end
    end

    -- ─── Boss Loop ───────────────────────────────────────────────────────────
    task.spawn(function()
        while true do
            if not active then task.wait(1); continue end
            if not ClientEvents then task.wait(1); continue end

            pcall(function()
                local bossId, boss = findBoss()

                if not bossId then
                    if fighting then
                        killCount += 1
                        fighting = false
                        currentTarget = "None"
                        lastBossId = nil
                        statusText = "Boss killed! (" .. killCount .. " total)"
                    else
                        statusText = "Scanning..."
                    end
                    return
                end

                -- New boss detected — equip Sword (key 4) + auto skills
                if bossId ~= lastBossId then
                    lastBossId = bossId
                    fighting = true
                    currentTarget = boss.name
                    pressKey(Enum.KeyCode.Four) -- equip Sword for melee
                    scanSkillKeybinds() -- pre-scan skill keys
                end

                -- Status with HP %
                local pct = boss.maxHealth > 0 and math.floor(boss.health / boss.maxHealth * 100) or 0
                statusText = "Fighting: " .. boss.name .. " (" .. pct .. "%)"

                -- Teleport to boss (always, no range limit)
                local bossPos = nil
                -- Try tracked entity position first
                if boss.pos then
                    bossPos = typeof(boss.pos) == "Vector3" and boss.pos
                        or Vector3.new(boss.pos.X or 0, boss.pos.Y or 0, boss.pos.Z or 0)
                end
                -- Fallback: read position directly from ClientEntities model
                if not bossPos then
                    pcall(function()
                        local ce = workspace:FindFirstChild("ClientEntities")
                        if not ce then return end
                        for _, model in ipairs(ce:GetChildren()) do
                            if model:IsA("Model") and isBossName(model.Name) then
                                local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
                                if part then bossPos = part.Position end
                                return
                            end
                        end
                    end)
                end
                if bossPos then
                    local hrp = getHRP()
                    if hrp and (hrp.Position - bossPos).Magnitude > 15 then
                        teleportTo(CFrame.new(bossPos) + Vector3.new(0, 5, 0))
                        pressKey(Enum.KeyCode.Four) -- re-equip Sword after teleport
                    end
                end

                -- Attack via Zap + skills
                if type(bossId) == "number" then
                    zapFire(ClientEvents.attemptHitMobs, {bossId}, {0})
                end
                spamSkills()
            end)
            task.wait(jitter(0.5, 0.3))
        end
    end)

    -- Re-teleport on death (World Bosses send you to spawn on death)
    PL.CharacterAdded:Connect(function()
        if active and fighting then
            task.wait(2) -- wait for character to load, boss loop re-teleports next tick
        end
    end)

    _G.AutoBoss = {
        enable   = function() active = true end,
        disable  = function() active = false; fighting = false; lastBossId = nil end,
        toggle   = function(v) if v == nil then v = not active end; if v then _G.AutoBoss.enable() else _G.AutoBoss.disable() end end,
        isActive = function() return active end,
        isFighting = function() return fighting end,
        getKills = function() return killCount end,
        getTarget = function() return currentTarget end,
        getStatus = function() return statusText end,
    }
end

-- ─── Feature: Auto Adventure ─────────────────────────────────────────────────
do
    local active = false
    local durationHours = 2 -- only 2h works
    local dimensionId = "Expedition" -- default adventure dimension
    local statusText = "Idle"

    -- Get champion {id, name} pairs from ChampionsScroll in PlayerGui
    local function getChampions()
        local champs = {} -- {id=uuid, name=displayName}
        pcall(function()
            for _, desc in ipairs(PL.PlayerGui:GetDescendants()) do
                if desc.Name == "ChampionsScroll" and desc:IsA("ScrollingFrame") then
                    for _, child in ipairs(desc:GetChildren()) do
                        if child:IsA("Frame") and child.Name:match("^%x+%-") then
                            local name = child.Name:sub(1, 8) .. "..."
                            pcall(function()
                                for _, sub in ipairs(child:GetDescendants()) do
                                    if sub:IsA("TextLabel") and sub.Text and #sub.Text > 0
                                        and sub.Name ~= "Level" and sub.Name ~= "Key"
                                        and not sub.Text:match("^%d") and not sub.Text:match("^Lv")
                                        and #sub.Text < 30 then
                                        name = sub.Text
                                        return
                                    end
                                end
                            end)
                            table.insert(champs, { id = child.Name, name = name })
                        end
                    end
                    break
                end
            end
        end)
        return champs
    end

    local selectedChampions = {} -- {} = All, or {[uuid]=true, ...} for specific picks

    task.spawn(function()
        while true do
            if not active then task.wait(2); continue end
            if not ClientEvents then task.wait(2); continue end
            pcall(function()
                local claimed = 0
                local started = 0
                for slot = 1, 4 do
                    local ok, msg = zapCall(ClientEvents.claimAdventure, slot)
                    if ok then
                        claimed += 1
                    end
                end
                local allChamps = getChampions()
                if #allChamps == 0 then
                    statusText = "No champions found"
                else
                    local useChamps = {}
                    if not next(selectedChampions) then
                        useChamps = allChamps
                    else
                        for _, c in ipairs(allChamps) do
                            if selectedChampions[c.id] then
                                table.insert(useChamps, c)
                            end
                        end
                        if #useChamps == 0 then useChamps = allChamps end
                    end
                    for slot = 1, math.min(4, #useChamps) do
                        local ok, msg = zapCall(ClientEvents.beginAdventure, {
                            slotIndex = slot,
                            championId = useChamps[slot].id,
                            dimensionId = dimensionId,
                            durationHours = durationHours,
                        })
                        if ok and ok ~= false then
                            started += 1
                        end
                    end
                end
                if claimed > 0 or started > 0 then
                    statusText = "Claimed: " .. claimed .. " | Started: " .. started
                else
                    statusText = "Running (" .. durationHours .. "h)"
                end
            end)
            task.wait(jitter(30, 0.2))
        end
    end)

    _G.AutoAdventure = {
        enable   = function() active = true end,
        disable  = function() active = false; statusText = "Idle" end,
        toggle   = function(v) if v == nil then v = not active end; if v then _G.AutoAdventure.enable() else _G.AutoAdventure.disable() end end,
        isActive = function() return active end,
        setDimension = function(d) dimensionId = d end,
        getDimension = function() return dimensionId end,
        setSelected = function(tbl) selectedChampions = tbl or {} end,
        getSelected = function() return selectedChampions end,
        toggleChampion = function(id)
            if selectedChampions[id] then selectedChampions[id] = nil
            else selectedChampions[id] = true end
        end,
        getChampions = getChampions,
        getStatus = function() return statusText end,
    }
end

-- ─── Toggle Definitions ──────────────────────────────────────────────────────
local TOGGLE_DEFS = {
    { label = "Auto Train",     key = "autoTrain",     getApi = function() return _G.AutoTrain end,     tip = "Server-side training + zone teleport" },
    { label = "Auto Boss",      key = "autoBoss",      getApi = function() return _G.AutoBoss end,      tip = "Farm World Bosses (excludes Kurama)" },
    { label = "Auto Adventure", key = "autoAdventure", getApi = function() return _G.AutoAdventure end, tip = "Loop champion adventures on all slots" },
}

-- Restore toggle states
for _, def in ipairs(TOGGLE_DEFS) do
    if savedState[def.key] then
        local api = def.getApi()
        if api then pcall(function() api.enable() end) end
    end
end

-- ─── Layout & Theme ──────────────────────────────────────────────────────────
local W = 320
local PANEL_H = 310

local C_BG       = Color3.fromRGB(8,  3,  18)
local C_BG2      = Color3.fromRGB(22, 6,  42)
local C_TITLE    = Color3.fromRGB(32, 10, 58)
local C_TITLE2   = Color3.fromRGB(14, 4,  28)
local C_TABS     = Color3.fromRGB(12, 4,  24)
local C_DIV      = Color3.fromRGB(75, 22, 115)
local C_TAB_ON   = Color3.fromRGB(55, 18, 90)
local C_TAB_OFF  = Color3.fromRGB(16, 5,  30)
local C_TXT_ON   = Color3.new(1, 1, 1)
local C_TXT_OFF  = Color3.fromRGB(235, 205, 255)
local C_BTN_ON   = Color3.fromRGB(85,  15, 140)
local C_BTN_OFF  = Color3.fromRGB(90,  10, 10)
local C_BTXT_ON  = Color3.fromRGB(55,  185, 85)
local C_BTXT_OFF = Color3.fromRGB(205, 85,  85)
local C_STROKE   = Color3.fromRGB(105, 32, 160)
local C_BSTR_ON  = Color3.fromRGB(130, 60, 200)
local C_BSTR_OFF = Color3.fromRGB(180, 30, 30)

-- ─── Style Helpers ───────────────────────────────────────────────────────────
local function mkGrad(parent, c1, c2, rot)
    local grad = Instance.new("UIGradient", parent)
    grad.Color    = ColorSequence.new(c1, c2)
    grad.Rotation = rot or 90
    return grad
end
local function mkStroke(parent, color, thickness, transparency)
    local s = Instance.new("UIStroke", parent)
    s.Color           = color
    s.Thickness       = thickness or 1
    s.Transparency    = transparency or 0
    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    return s
end
local function hLine(parent, y)
    local d = Instance.new("Frame", parent)
    d.Size = UDim2.new(1, -12, 0, 1)
    d.Position = UDim2.new(0, 6, 0, y)
    d.BackgroundColor3 = C_DIV
    d.BorderSizePixel  = 0
    mkGrad(d, C_DIV, Color3.fromRGB(140, 18, 50), 0)
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- GUI BUILD
-- ═══════════════════════════════════════════════════════════════════════════════

-- ─── Panel ───────────────────────────────────────────────────────────────────
local panel = Instance.new("Frame", g)
panel.BackgroundTransparency = 1
panel.BorderSizePixel = 0
panel.Size = UDim2.new(0, W, 0, PANEL_H)
Instance.new("UICorner", panel).CornerRadius = UDim.new(0, 8)

local panelBg = Instance.new("Frame", panel)
panelBg.Size = UDim2.new(1, 0, 1, 0)
panelBg.BackgroundColor3 = C_BG
panelBg.BorderSizePixel  = 0
Instance.new("UICorner", panelBg).CornerRadius = UDim.new(0, 8)
mkGrad(panelBg, C_BG, C_BG2, 120)
mkStroke(panelBg, C_STROKE, 1.5, 0)

if savedState.guiX and workspace.CurrentCamera then
    local vp = workspace.CurrentCamera.ViewportSize
    panel.Position = UDim2.new(0, math.clamp(savedState.guiX, 0, math.max(0, vp.X - W)),
                                0, math.clamp(savedState.guiY, 0, math.max(0, vp.Y - 50)))
else
    panel.Position = UDim2.new(0.5, -math.floor(W/2), 0, 12)
end

-- ─── Bubble (Minimize) ───────────────────────────────────────────────────────
local bubble = Instance.new("TextButton", g)
bubble.Size = UDim2.new(0, 44, 0, 44)
bubble.Position = UDim2.new(1, -57, 0, 64)
bubble.BackgroundColor3 = C_TITLE
bubble.Text = "AFS"
bubble.TextColor3 = C_TXT_ON
bubble.TextSize = 11
bubble.Font = Enum.Font.GothamBold
bubble.BorderSizePixel = 0
bubble.Visible = false
Instance.new("UICorner", bubble).CornerRadius = UDim.new(0.5, 0)
mkStroke(bubble, C_STROKE, 2, 0.15)
bubble.MouseButton1Click:Connect(function()
    pcall(function() bubble.Visible = false; panel.Visible = true end)
end)

-- ─── Tooltip ─────────────────────────────────────────────────────────────────
local ttFrame = Instance.new("Frame", g)
ttFrame.BackgroundColor3 = Color3.fromRGB(14, 4, 28)
ttFrame.BorderSizePixel  = 0
ttFrame.AutomaticSize    = Enum.AutomaticSize.XY
ttFrame.Visible          = false
ttFrame.ZIndex           = 20
Instance.new("UICorner", ttFrame).CornerRadius = UDim.new(0, 5)
mkStroke(ttFrame, C_DIV, 1, 0.3)
local ttPad = Instance.new("UIPadding", ttFrame)
ttPad.PaddingTop = UDim.new(0, 4); ttPad.PaddingBottom = UDim.new(0, 4)
ttPad.PaddingLeft = UDim.new(0, 8); ttPad.PaddingRight = UDim.new(0, 8)
local ttLbl = Instance.new("TextLabel", ttFrame)
ttLbl.BackgroundTransparency = 1
ttLbl.TextColor3 = Color3.fromRGB(215, 190, 255)
ttLbl.TextSize   = 10
ttLbl.Font       = Enum.Font.Gotham
ttLbl.AutomaticSize = Enum.AutomaticSize.XY
ttLbl.ZIndex = 20

local function setTooltip(btn, text)
    if not text or text == "" then return end
    btn.MouseEnter:Connect(function()
        pcall(function()
            ttLbl.Text = text
            local ap = btn.AbsolutePosition
            local as = btn.AbsoluteSize
            local vp = workspace.CurrentCamera.ViewportSize
            ttFrame.Position = UDim2.new(0, math.clamp(ap.X, 4, vp.X - 185), 0,
                (ap.Y + as.Y + 34 > vp.Y) and (ap.Y - 34) or (ap.Y + as.Y + 4))
            ttFrame.Visible = true
        end)
    end)
    btn.MouseLeave:Connect(function() pcall(function() ttFrame.Visible = false end) end)
end

-- ─── Title Bar ───────────────────────────────────────────────────────────────
local titleBar = Instance.new("Frame", panel)
titleBar.Size = UDim2.new(1, 0, 0, 32)
titleBar.BackgroundColor3 = C_TITLE
titleBar.BorderSizePixel  = 0
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 8)
mkGrad(titleBar, C_TITLE, C_TITLE2, 135)

local titleLbl = Instance.new("TextLabel", titleBar)
titleLbl.Size = UDim2.new(1, -80, 1, 0)
titleLbl.Position = UDim2.new(0, 12, 0, 0)
titleLbl.BackgroundTransparency = 1
titleLbl.TextColor3 = C_TXT_ON
titleLbl.Text     = "Devilish Scripts - AFS"
titleLbl.TextSize = 13
titleLbl.Font     = Enum.Font.GothamBold
titleLbl.TextXAlignment = Enum.TextXAlignment.Left

local minBtn = Instance.new("TextButton", titleBar)
minBtn.Size = UDim2.new(0, 28, 0, 24)
minBtn.Position = UDim2.new(1, -64, 0, 4)
minBtn.BackgroundColor3 = Color3.fromRGB(38, 12, 65)
minBtn.TextColor3 = Color3.fromRGB(235, 210, 255)
minBtn.Text = "-"
minBtn.TextSize = 18
minBtn.Font = Enum.Font.GothamBold
minBtn.BorderSizePixel = 0
Instance.new("UICorner", minBtn).CornerRadius = UDim.new(0, 5)
mkStroke(minBtn, C_DIV, 1, 0.25)
minBtn.MouseButton1Click:Connect(function()
    pcall(function() panel.Visible = false; bubble.Visible = true end)
end)
setTooltip(minBtn, "Minimize to bubble icon")

local closeBtn = Instance.new("TextButton", titleBar)
closeBtn.Size = UDim2.new(0, 28, 0, 24)
closeBtn.Position = UDim2.new(1, -32, 0, 4)
closeBtn.BackgroundColor3 = Color3.fromRGB(140, 18, 35)
closeBtn.TextColor3 = Color3.fromRGB(255, 155, 165)
closeBtn.Text = "X"
closeBtn.TextSize = 13
closeBtn.Font = Enum.Font.GothamBold
closeBtn.BorderSizePixel = 0
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 5)
mkGrad(closeBtn, Color3.fromRGB(160, 22, 45), Color3.fromRGB(95, 8, 75), 90)
mkStroke(closeBtn, Color3.fromRGB(225, 55, 80), 1, 0.15)
closeBtn.MouseButton1Click:Connect(function()
    pcall(function()
        for _, def in ipairs(TOGGLE_DEFS) do
            local api = def.getApi()
            if api then pcall(function() api.disable() end) end
        end
        g:Destroy()
        _G.AFSMain = nil
        _G.AFS_LOADED = nil
    end)
end)
setTooltip(closeBtn, "Close panel and disable all features")

-- ─── Drag ────────────────────────────────────────────────────────────────────
local dragging = false
local dragStart, panStart
titleBar.InputBegan:Connect(function(input)
    pcall(function()
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging  = true
            dragStart = input.Position
            panStart  = panel.Position
        end
    end)
end)
UIS.InputChanged:Connect(function(input)
    pcall(function()
        if not dragging or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
        local d = input.Position - dragStart
        panel.Position = UDim2.new(panStart.X.Scale, panStart.X.Offset + d.X,
                                   panStart.Y.Scale, panStart.Y.Offset + d.Y)
    end)
end)
UIS.InputEnded:Connect(function(input)
    pcall(function()
        if input.UserInputType == Enum.UserInputType.MouseButton1 and dragging then
            dragging = false
            local state = loadState()
            state.guiX = panel.Position.X.Offset
            state.guiY = panel.Position.Y.Offset
            saveState(state)
        end
    end)
end)

-- ─── Tab Bar ─────────────────────────────────────────────────────────────────
local TAB_NAMES = {"Controls", "Combat"}
local TAB_COUNT = #TAB_NAMES
local TAB_W = math.floor(W / TAB_COUNT)
local tabBar = Instance.new("Frame", panel)
tabBar.Size = UDim2.new(1, 0, 0, 28)
tabBar.Position = UDim2.new(0, 0, 0, 32)
tabBar.BackgroundColor3 = C_TABS
tabBar.BorderSizePixel  = 0
mkGrad(tabBar, Color3.fromRGB(14, 5, 28), Color3.fromRGB(10, 3, 20), 90)

local tabBtns = {}
for i, name in ipairs(TAB_NAMES) do
    local t = Instance.new("TextButton", tabBar)
    local w = i == TAB_COUNT and (W - TAB_W * (TAB_COUNT - 1)) or TAB_W
    t.Size = UDim2.new(0, w, 1, 0)
    t.Position = UDim2.new(0, TAB_W * (i - 1), 0, 0)
    t.BackgroundColor3 = i == 1 and C_TAB_ON or C_TAB_OFF
    t.TextColor3 = i == 1 and C_TXT_ON or C_TXT_OFF
    t.Text = name
    t.TextSize = 10
    t.Font = Enum.Font.GothamBold
    t.BorderSizePixel = 0
    Instance.new("UICorner", t).CornerRadius = UDim.new(0, 5)
    tabBtns[i] = t
end

local tabDiv = Instance.new("Frame", panel)
tabDiv.Size = UDim2.new(1, 0, 0, 1)
tabDiv.Position = UDim2.new(0, 0, 0, 60)
tabDiv.BackgroundColor3 = C_DIV
tabDiv.BorderSizePixel  = 0
mkGrad(tabDiv, C_DIV, Color3.fromRGB(150, 20, 55), 0)

-- ─── Content Frames ──────────────────────────────────────────────────────────
local contentFrames = {}
local PANEL_HEIGHTS = {310, 130}
for i, _ in ipairs(TAB_NAMES) do
    local f = Instance.new("Frame", panel)
    f.Position = UDim2.new(0, 0, 0, 61)
    f.Size = UDim2.new(1, 0, 1, -61)
    f.BackgroundTransparency = 1
    f.BorderSizePixel = 0
    f.Visible = (i == 1)
    contentFrames[i] = f
end

-- Tab switching
local currentTab = 1
local function switchTab(idx)
    currentTab = idx
    for i, f in ipairs(contentFrames) do
        f.Visible = (i == idx)
        tabBtns[i].BackgroundColor3 = i == idx and C_TAB_ON or C_TAB_OFF
        tabBtns[i].TextColor3 = i == idx and C_TXT_ON or C_TXT_OFF
    end
    panel.Size = UDim2.new(0, W, 0, PANEL_HEIGHTS[idx] or PANEL_H)
end
for i, btn in ipairs(tabBtns) do
    btn.MouseButton1Click:Connect(function() switchTab(i) end)
end

-- ─── Shared UI Helpers ───────────────────────────────────────────────────────
local refreshFns = {}

local function makeToggleBtn(parent, def, xPos, width, yPos)
    local btn = Instance.new("TextButton", parent)
    btn.Size = UDim2.new(0, width, 0, 28)
    btn.Position = UDim2.new(0, xPos, 0, yPos)
    btn.BackgroundColor3 = C_BTN_OFF
    btn.TextColor3 = C_BTXT_OFF
    btn.TextSize   = 12
    btn.Font       = Enum.Font.GothamBold
    btn.BorderSizePixel = 0
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    local btnStroke = mkStroke(btn, C_BSTR_OFF, 1.5, 0.2)

    local function refresh()
        local api = def.getApi()
        local on  = api and api.isActive()
        btn.Text = def.label .. ": " .. (on and "ON" or "OFF")
        if on then
            btn.BackgroundColor3   = C_BTN_ON
            btn.TextColor3         = C_BTXT_ON
            btnStroke.Color        = C_BSTR_ON
            btnStroke.Transparency = 0.1
        else
            btn.BackgroundColor3   = C_BTN_OFF
            btn.TextColor3         = C_BTXT_OFF
            btnStroke.Color        = C_BSTR_OFF
            btnStroke.Transparency = 0.2
        end
    end

    local debounce = false
    btn.MouseButton1Click:Connect(function()
        if debounce then return end
        debounce = true
        pcall(function()
            local api = def.getApi()
            if api then pcall(function() api.toggle() end) end
            refresh()
            local state = loadState()
            local a = def.getApi()
            state[def.key] = a and a.isActive() or false
            saveState(state)
        end)
        task.delay(0.4, function() debounce = false end)
    end)
    refresh()
    table.insert(refreshFns, refresh)
    if def.tip then setTooltip(btn, def.tip) end
    return btn
end

-- Dropdown helper
local activeDropdown = nil
local function makeDropdown(parent, labelText, yPos, options, onSelect)
    local container = Instance.new("Frame", parent)
    container.Size = UDim2.new(1, -12, 0, 42)
    container.Position = UDim2.new(0, 6, 0, yPos)
    container.BackgroundTransparency = 1
    container.BorderSizePixel = 0
    container.ZIndex = 5

    local lbl = Instance.new("TextLabel", container)
    lbl.Size = UDim2.new(1, 0, 0, 14)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    lbl.Text = labelText
    lbl.TextSize = 10
    lbl.Font = Enum.Font.GothamBold
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local btn = Instance.new("TextButton", container)
    btn.Size = UDim2.new(1, 0, 0, 24)
    btn.Position = UDim2.new(0, 0, 0, 16)
    btn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    btn.TextColor3 = Color3.fromRGB(200, 180, 230)
    btn.Text = "Select..."
    btn.TextSize = 11
    btn.Font = Enum.Font.GothamBold
    btn.BorderSizePixel = 0
    btn.ZIndex = 5
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
    mkStroke(btn, C_DIV, 1, 0.3)

    local listFrame = Instance.new("ScrollingFrame", container)
    listFrame.Size = UDim2.new(1, 0, 0, 0)
    listFrame.Position = UDim2.new(0, 0, 0, 42)
    listFrame.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
    listFrame.BorderSizePixel = 0
    listFrame.Visible = false
    listFrame.ScrollBarThickness = 3
    listFrame.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    listFrame.ZIndex = 15
    Instance.new("UICorner", listFrame).CornerRadius = UDim.new(0, 5)
    mkStroke(listFrame, C_DIV, 1, 0.3)

    local function closeList()
        listFrame.Visible = false
        if activeDropdown == listFrame then activeDropdown = nil end
    end

    local maxOpts = math.max(#options, 12)
    local optBtns = {}
    local optData = {}
    for i = 1, maxOpts do
        local ob = Instance.new("TextButton", listFrame)
        ob.Size = UDim2.new(1, -4, 0, 22)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i-1) * 24)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = 10
        ob.Font = Enum.Font.GothamBold
        ob.BorderSizePixel = 0
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        ob.MouseEnter:Connect(function() pcall(function() ob.BackgroundColor3 = C_BTN_ON end) end)
        ob.MouseLeave:Connect(function() pcall(function() ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50) end) end)
        ob.MouseButton1Click:Connect(function()
            local opt = optData[i]
            if opt then
                pcall(function()
                    btn.Text = opt.display or opt.value
                    closeList()
                    if onSelect then onSelect(opt.value) end
                end)
            end
        end)
        optBtns[i] = ob
    end

    local function populate(opts)
        for i, ob in ipairs(optBtns) do
            if i <= #opts then
                ob.Text = opts[i].display or opts[i].value
                ob.Position = UDim2.new(0, 2, 0, 2 + (i-1) * 24)
                ob.Visible = true
                optData[i] = opts[i]
            else
                ob.Visible = false
                optData[i] = nil
            end
        end
        local count = math.min(#opts, maxOpts)
        local ch = 2 + count * 24 + 2
        listFrame.CanvasSize = UDim2.new(0, 0, 0, ch)
        listFrame.Size = UDim2.new(1, 0, 0, math.min(ch, 160))
    end

    btn.MouseButton1Click:Connect(function()
        pcall(function()
            if listFrame.Visible then
                closeList()
            else
                if activeDropdown and activeDropdown ~= listFrame then
                    activeDropdown.Visible = false
                end
                listFrame.Visible = true
                activeDropdown = listFrame
            end
        end)
    end)

    populate(options)

    return {
        container = container, btn = btn, listFrame = listFrame,
        populate = populate, close = closeList,
        setLabel = function(t) btn.Text = t end,
    }
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- TAB 1: CONTROLS (Train + Adventure + Anti-AFK)
-- ═══════════════════════════════════════════════════════════════════════════════
local controlsFrame = contentFrames[1]
local ty = 6

-- Auto Train Toggle
makeToggleBtn(controlsFrame, TOGGLE_DEFS[1], 6, W - 16, ty)
ty = ty + 32

-- Stat Dropdown
local statOpts = {{ value = "All", display = "All (Cycle)" }}
for _, s in ipairs(STAT_TYPES) do
    table.insert(statOpts, { value = s, display = s })
end
local statDropdown = makeDropdown(controlsFrame, "Training Stat", ty, statOpts, function(val)
    pcall(function() _G.AutoTrain.setStat(val) end)
end)
statDropdown.btn.Text = savedState.trainStat or "All (Cycle)"
if savedState.trainStat then
    pcall(function() _G.AutoTrain.setStat(savedState.trainStat == "All (Cycle)" and "All" or savedState.trainStat) end)
end
ty = ty + 40

-- Train status
local trainStatusLbl = Instance.new("TextLabel", controlsFrame)
trainStatusLbl.Size = UDim2.new(1, -12, 0, 14)
trainStatusLbl.Position = UDim2.new(0, 6, 0, ty)
trainStatusLbl.BackgroundTransparency = 1
trainStatusLbl.TextColor3 = Color3.fromRGB(200, 180, 230)
trainStatusLbl.Text = "Status: Idle"
trainStatusLbl.TextSize = 10
trainStatusLbl.Font = Enum.Font.Gotham
trainStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
ty = ty + 16

-- Stat readouts (compact 3-col)
local statLabels = {}
for i, name in ipairs(STAT_TYPES) do
    local row = math.ceil(i / 3)
    local col = (i - 1) % 3
    local lbl = Instance.new("TextLabel", controlsFrame)
    lbl.Size = UDim2.new(0, 95, 0, 13)
    lbl.Position = UDim2.new(0, 6 + col * 100, 0, ty + (row - 1) * 14)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(180, 150, 220)
    lbl.Text = name .. ": ?"
    lbl.TextSize = 9
    lbl.Font = Enum.Font.Gotham
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    statLabels[name] = lbl
end
ty = ty + math.ceil(#STAT_TYPES / 3) * 14 + 4

hLine(controlsFrame, ty); ty = ty + 6

-- Auto Adventure Toggle
makeToggleBtn(controlsFrame, TOGGLE_DEFS[3], 6, W - 16, ty)
ty = ty + 32

-- Champion multi-select
local champContainer = Instance.new("Frame", controlsFrame)
champContainer.Size = UDim2.new(1, -12, 0, 42)
champContainer.Position = UDim2.new(0, 6, 0, ty)
champContainer.BackgroundTransparency = 1
champContainer.BorderSizePixel = 0
champContainer.ZIndex = 5

local champLbl = Instance.new("TextLabel", champContainer)
champLbl.Size = UDim2.new(0, 100, 0, 14)
champLbl.BackgroundTransparency = 1
champLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
champLbl.Text = "Champions"
champLbl.TextSize = 10
champLbl.Font = Enum.Font.GothamBold
champLbl.TextXAlignment = Enum.TextXAlignment.Left

-- Summary button (shows selection, toggles list)
local champBtn = Instance.new("TextButton", champContainer)
champBtn.Size = UDim2.new(1, -56, 0, 24)
champBtn.Position = UDim2.new(0, 0, 0, 16)
champBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
champBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
champBtn.Text = "All Champions"
champBtn.TextSize = 11
champBtn.Font = Enum.Font.GothamBold
champBtn.BorderSizePixel = 0
champBtn.ZIndex = 5
Instance.new("UICorner", champBtn).CornerRadius = UDim.new(0, 5)
mkStroke(champBtn, C_DIV, 1, 0.3)

-- Refresh button
local champRefreshBtn = Instance.new("TextButton", champContainer)
champRefreshBtn.Size = UDim2.new(0, 50, 0, 24)
champRefreshBtn.Position = UDim2.new(1, -50, 0, 16)
champRefreshBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
champRefreshBtn.TextColor3 = Color3.fromRGB(190, 150, 255)
champRefreshBtn.Text = "Refresh"
champRefreshBtn.TextSize = 9
champRefreshBtn.Font = Enum.Font.GothamBold
champRefreshBtn.BorderSizePixel = 0
champRefreshBtn.ZIndex = 5
Instance.new("UICorner", champRefreshBtn).CornerRadius = UDim.new(0, 4)
mkStroke(champRefreshBtn, C_DIV, 1, 0.4)

-- Checklist panel
local champList = Instance.new("ScrollingFrame", champContainer)
champList.Size = UDim2.new(1, 0, 0, 0)
champList.Position = UDim2.new(0, 0, 0, 42)
champList.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
champList.BorderSizePixel = 0
champList.Visible = false
champList.ScrollBarThickness = 3
champList.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
champList.ZIndex = 15
Instance.new("UICorner", champList).CornerRadius = UDim.new(0, 5)
mkStroke(champList, C_DIV, 1, 0.3)

local MAX_CHAMP_BTNS = 12
local champOptBtns = {}
local champOptData = {} -- [i] = {id, name}
local CHAMP_BTN_H = UIS.TouchEnabled and 38 or 22
local CHAMP_BTN_SPACING = CHAMP_BTN_H + 4
for i = 1, MAX_CHAMP_BTNS do
    local ob = Instance.new("TextButton", champList)
    ob.Size = UDim2.new(1, -4, 0, CHAMP_BTN_H)
    ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * CHAMP_BTN_SPACING)
    ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    ob.TextColor3 = Color3.fromRGB(220, 200, 255)
    ob.Text = ""
    ob.TextSize = UIS.TouchEnabled and 13 or 10
    ob.Font = Enum.Font.GothamBold
    ob.TextXAlignment = Enum.TextXAlignment.Left
    ob.BorderSizePixel = 0
    ob.ZIndex = 16
    ob.Visible = false
    ob.Active = true
    Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
    ob.MouseEnter:Connect(function() pcall(function() ob.BackgroundColor3 = C_BTN_ON end) end)
    ob.MouseLeave:Connect(function() pcall(function() ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50) end) end)
    champOptBtns[i] = ob
end

local function getSelectedSet()
    return _G.AutoAdventure and _G.AutoAdventure.getSelected() or {}
end

local function updateChampBtnText()
    local sel = getSelectedSet()
    if not next(sel) then
        champBtn.Text = "All Champions"
        return
    end
    local names = {}
    for i = 1, MAX_CHAMP_BTNS do
        local d = champOptData[i]
        if d and sel[d.id] then table.insert(names, d.name) end
    end
    if #names == 0 then champBtn.Text = "All Champions"
    elseif #names <= 2 then champBtn.Text = table.concat(names, ", ")
    else champBtn.Text = names[1] .. " +" .. (#names - 1) .. " more"
    end
end

local function updateCheckmarks()
    local sel = getSelectedSet()
    local allMode = not next(sel)
    for i = 1, MAX_CHAMP_BTNS do
        local d = champOptData[i]
        if not d then break end
        local checked = allMode or sel[d.id]
        local prefix = checked and "[x] " or "[  ] "
        champOptBtns[i].Text = "  " .. prefix .. d.name
        champOptBtns[i].TextColor3 = checked and C_BTXT_ON or Color3.fromRGB(160, 130, 190)
    end
end

local function saveChampSelection()
    local state = loadState()
    local sel = getSelectedSet()
    local list = {}
    for id in pairs(sel) do table.insert(list, id) end
    state.adventureChampions = #list > 0 and list or nil
    saveState(state)
end

-- Wire up click handlers
for i = 1, MAX_CHAMP_BTNS do
    champOptBtns[i].MouseButton1Click:Connect(function()
        local d = champOptData[i]
        if not d then return end
        pcall(function()
            _G.AutoAdventure.toggleChampion(d.id)
            updateCheckmarks()
            updateChampBtnText()
            saveChampSelection()
        end)
    end)
end

local champListOpen = false
local function closeChampList()
    champList.Visible = false
    champListOpen = false
    if activeDropdown == champList then activeDropdown = nil end
end
champBtn.MouseButton1Click:Connect(function()
    pcall(function()
        if champListOpen then
            closeChampList()
        else
            if activeDropdown and activeDropdown ~= champList then
                activeDropdown.Visible = false
            end
            champList.Visible = true
            champListOpen = true
            activeDropdown = champList
            updateCheckmarks()
        end
    end)
end)

local function refreshChampList()
    pcall(function()
        local champs = _G.AutoAdventure.getChampions()
        if #champs == 0 then return end
        for i = 1, MAX_CHAMP_BTNS do
            if i <= #champs then
                champOptData[i] = champs[i]
                champOptBtns[i].Text = "  [  ] " .. champs[i].name
                champOptBtns[i].Position = UDim2.new(0, 2, 0, 2 + (i - 1) * CHAMP_BTN_SPACING)
                champOptBtns[i].Visible = true
            else
                champOptData[i] = nil
                champOptBtns[i].Visible = false
            end
        end
        local count = math.min(#champs, MAX_CHAMP_BTNS)
        local ch = 2 + count * CHAMP_BTN_SPACING + 2
        champList.CanvasSize = UDim2.new(0, 0, 0, ch)
        champList.Size = UDim2.new(1, 0, 0, math.min(ch, UIS.TouchEnabled and 220 or 160))
        updateCheckmarks()
        updateChampBtnText()
    end)
end

champRefreshBtn.MouseButton1Click:Connect(function()
    champRefreshBtn.Text = "..."
    task.spawn(function()
        refreshChampList()
        champRefreshBtn.Text = "Refresh"
    end)
end)

-- Restore saved selection
pcall(function()
    if savedState.adventureChampions and type(savedState.adventureChampions) == "table" then
        local sel = {}
        for _, id in ipairs(savedState.adventureChampions) do sel[id] = true end
        _G.AutoAdventure.setSelected(sel)
    end
end)

-- Auto-populate on startup
task.spawn(function()
    for attempt = 1, 10 do
        task.wait(3)
        refreshChampList()
        local champs = _G.AutoAdventure.getChampions()
        if #champs > 0 then break end
    end
end)
ty = ty + 40

-- Adventure status
local advStatusLbl = Instance.new("TextLabel", controlsFrame)
advStatusLbl.Size = UDim2.new(1, -12, 0, 14)
advStatusLbl.Position = UDim2.new(0, 6, 0, ty)
advStatusLbl.BackgroundTransparency = 1
advStatusLbl.TextColor3 = Color3.fromRGB(200, 180, 230)
advStatusLbl.Text = "Adventure: Idle"
advStatusLbl.TextSize = 10
advStatusLbl.Font = Enum.Font.Gotham
advStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
ty = ty + 18

hLine(controlsFrame, ty); ty = ty + 6

-- Anti-AFK badge
local afkLbl = Instance.new("TextLabel", controlsFrame)
afkLbl.Size = UDim2.new(1, -12, 0, 14)
afkLbl.Position = UDim2.new(0, 6, 0, ty)
afkLbl.BackgroundTransparency = 1
afkLbl.TextColor3 = C_BTXT_ON
afkLbl.Text = "Anti-AFK: ACTIVE"
afkLbl.TextSize = 10
afkLbl.Font = Enum.Font.GothamBold
afkLbl.TextXAlignment = Enum.TextXAlignment.Left

-- ═══════════════════════════════════════════════════════════════════════════════
-- TAB 2: COMBAT
-- ═══════════════════════════════════════════════════════════════════════════════
local combatFrame = contentFrames[2]
local cy = 6

-- Auto Boss Toggle
makeToggleBtn(combatFrame, TOGGLE_DEFS[2], 6, W - 16, cy)
cy = cy + 32

-- Boss status
local bossStatusLbl = Instance.new("TextLabel", combatFrame)
bossStatusLbl.Size = UDim2.new(1, -12, 0, 14)
bossStatusLbl.Position = UDim2.new(0, 6, 0, cy)
bossStatusLbl.BackgroundTransparency = 1
bossStatusLbl.TextColor3 = Color3.fromRGB(200, 180, 230)
bossStatusLbl.Text = "Boss: Idle"
bossStatusLbl.TextSize = 10
bossStatusLbl.Font = Enum.Font.Gotham
bossStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
cy = cy + 16

-- Kill count
local killCountLbl = Instance.new("TextLabel", combatFrame)
killCountLbl.Size = UDim2.new(1, -12, 0, 14)
killCountLbl.Position = UDim2.new(0, 6, 0, cy)
killCountLbl.BackgroundTransparency = 1
killCountLbl.TextColor3 = Color3.fromRGB(200, 180, 230)
killCountLbl.Text = "Kills: 0"
killCountLbl.TextSize = 10
killCountLbl.Font = Enum.Font.Gotham
killCountLbl.TextXAlignment = Enum.TextXAlignment.Left

-- ─── Periodic Refresh Loop ───────────────────────────────────────────────────
task.spawn(function()
    while g and g.Parent do
        pcall(function()
            -- Refresh toggles
            for _, fn in ipairs(refreshFns) do pcall(fn) end

            -- Training status
            trainStatusLbl.Text = "Status: " .. _G.AutoTrain.getStatus()

            -- Boss status
            bossStatusLbl.Text = "Boss: " .. _G.AutoBoss.getStatus()
            killCountLbl.Text = "Kills: " .. _G.AutoBoss.getKills()

            -- Adventure status
            advStatusLbl.Text = "Adventure: " .. _G.AutoAdventure.getStatus()

            -- Stat readouts
            local stats = scanPlayerStats()
            for _, name in ipairs(STAT_TYPES) do
                local v = stats[name] or 0
                local fmt = v >= 1e9 and string.format("%.2fB", v/1e9)
                    or v >= 1e6 and string.format("%.2fM", v/1e6)
                    or v >= 1e3 and string.format("%.1fK", v/1e3)
                    or tostring(math.floor(v))
                if statLabels[name] then statLabels[name].Text = name .. ": " .. fmt end
            end
        end)
        task.wait(1)
    end
end)

-- ─── Public API ──────────────────────────────────────────────────────────────
_G.AFSMain = {
    close = function()
        pcall(function()
            for _, def in ipairs(TOGGLE_DEFS) do
                local api = def.getApi()
                if api then pcall(function() api.disable() end) end
            end
            g:Destroy()
        end)
    end,
}

