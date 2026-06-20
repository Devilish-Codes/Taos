do
local _1Ili1Ii={}
local _l11Ii1lL=(getgenv or function() return _G end)()
local _1i1iI1=true
_1Ili1Ii.loadstring=_l11Ii1lL.loadstring
_1Ili1Ii.load=_l11Ii1lL.load
_1Ili1Ii.type=_l11Ii1lL.type
_1Ili1Ii.pcall=_l11Ii1lL.pcall
_1Ili1Ii.rawequal=rawequal
_1Ili1Ii.tostring=tostring
_1Ili1Ii.coroutine_resume=coroutine.resume
_1Ili1Ii.coroutine_create=coroutine.create
_1Ili1Ii.math_floor=math.floor
_1Ili1Ii.string_byte=string.byte
_1Ili1Ii.table_concat=table.concat
pcall(function() _l11Ii1lL.hookfunction=nil end)
pcall(function() _l11Ii1lL.hookmetamethod=nil end)
pcall(function() _l11Ii1lL.newcclosure=nil end)
pcall(function() _l11Ii1lL.replaceclosure=nil end)
pcall(function() _l11Ii1lL.clonefunction=nil end)
pcall(function() _l11Ii1lL.getgc=nil end)
pcall(function() _l11Ii1lL.getinfo=nil end)
pcall(function() _l11Ii1lL.getupvalue=nil end)
pcall(function() _l11Ii1lL.getupvalues=nil end)
pcall(function() _l11Ii1lL.setupvalue=nil end)
pcall(function() _l11Ii1lL.getrawmetatable=nil end)
pcall(function() _l11Ii1lL.setreadonly=nil end)
pcall(function() _l11Ii1lL.isreadonly=nil end)
pcall(function() _l11Ii1lL.getnamecallmethod=nil end)
pcall(function() _l11Ii1lL.setnamecallmethod=nil end)
pcall(function() _l11Ii1lL.decompile=nil end)
pcall(function() _l11Ii1lL.disassemble=nil end)
pcall(function() _l11Ii1lL.saveinstance=nil end)
pcall(function() _l11Ii1lL.getscriptbytecode=nil end)
pcall(function() _l11Ii1lL.dumpstring=nil end)
pcall(function() _l11Ii1lL.writefile=nil end)
pcall(function() _l11Ii1lL.appendfile=nil end)
pcall(function() _l11Ii1lL.getconnections=nil end)
do
  local _lIl1illL=load or loadstring
  if _lIl1illL then
    local _lIL1illil,_iLlLiIIi=pcall(_lIl1illL,"return 1")
    if _lIL1illil and type(_iLlLiIIi)=="function" then
      local _1llIL1iIL,_lIIiIL=pcall(_iLlLiIIi)
      if not _1llIL1iIL or _lIIiIL~=1 then _1i1iI1=false end
    end
  end
end
pcall(function()
  local _ls=load or loadstring
  if _ls and debug and debug.info then
    local _s=debug.info(_ls,"s")
    if _s and _s~="[C]" and _s~="" then _1i1iI1=false end
  end
end)
do
  local _LLLII,_ilI1LI=pcall(function() return game:GetService("Players") end)
  local _LiLIL1,_Liiil1lI=pcall(function() return game.GetService(game,"Players") end)
  if _LLLII and _LiLIL1 and _ilI1LI~=_Liiil1lI then _1i1iI1=false end
end
do
  local _IIlIil=_l11Ii1lL.loadstring or _l11Ii1lL.load
  if _IIlIil and not rawequal(load or loadstring,_IIlIil) then _1i1iI1=false end
end
pcall(function()
  local _mt=getrawmetatable and getrawmetatable(_l11Ii1lL)
  if _mt then
    local _oi=rawget(_mt,"__newindex")
    rawset(_mt,"__newindex",function(_t,_k,_v)
      if _k=="loadstring" or _k=="load" or _k=="type" or _k=="pcall" or _k=="rawequal" then return end
      if _oi then return _oi(_t,_k,_v) end
      rawset(_t,_k,_v)
    end)
  end
end)
do
  local _L1LL1lL=os.clock()
  pcall(function() game:GetService("Players") end)
  local _Il1iiil1=os.clock()-_L1LL1lL
  if _Il1iiil1>0.05 then _1i1iI1=false end
end
pcall(function()
  local _gs=tostring(game)
  if _gs~="Game" and not string.match(_gs,"^%a") then _1i1iI1=false end
end)
do
  local _l1iiL=coroutine.create(function() coroutine.yield(42) end)
  local _iLL1liLI,_L1lliLI=coroutine.resume(_l1iiL)
  if not _iLL1liLI or _L1lliLI~=42 then _1i1iI1=false end
end
pcall(function()
  local _pid=game.PlaceId
  if type(_pid)~="number" or _pid==0 then _1i1iI1=false end
end)
task.spawn(function()
  while _1i1iI1 do
    if not rawequal(type,_1Ili1Ii.type) then _1i1iI1=false end
    if not rawequal(pcall,_1Ili1Ii.pcall) then _1i1iI1=false end
    local _ls=_l11Ii1lL.loadstring or _l11Ii1lL.load
    if _ls and _1Ili1Ii.loadstring and not rawequal(_ls,_1Ili1Ii.loadstring) then _1i1iI1=false end
    pcall(function()
      if debug and debug.info then
        local _src=debug.info(_1Ili1Ii.loadstring or _1Ili1Ii.load,"s")
        if _src and _src~="[C]" and _src~="" then _1i1iI1=false end
      end
    end)
    do
      local _ok1,_v1=pcall(function() return game:GetService("Players") end)
      local _ok2,_v2=pcall(function() return game.GetService(game,"Players") end)
      if _ok1 and _ok2 and _v1~=_v2 then _1i1iI1=false end
    end
    if not _1i1iI1 then return end
    task.wait(2+math.random()*3)
  end
end)
if _1i1iI1 then
local _liiIIiLl,_llLLli1I=(load or loadstring)([[
-- ─── Devilish Key Gate ───────────────────────────────────────────────────────
if not _G._devilishKey then
    warn("[ClickerSim] No key data found. Run via hub.lua.")
    return
end
if _G.MAIN_LOADED then
    pcall(function() if _G.ClickerSimMain then _G.ClickerSimMain.close() end end)
end
_G.MAIN_LOADED = true

-- ─── Services ─────────────────────────────────────────────────────────────────
local RS          = game:GetService("ReplicatedStorage")
local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")
local UIS         = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local CoreGui     = game:GetService("CoreGui")
local TPS         = game:GetService("TeleportService")
local PL          = Players.LocalPlayer

local function jitter(base, pct)
    return base * (1 + (math.random() - 0.5) * pct)
end

-- ─── Root ScreenGui (BEFORE any require — main thread has Plugin capability) ─
local g = Instance.new("ScreenGui")
g.ResetOnSpawn   = false
g.Name           = "ClickerSimMain"
g.IgnoreGuiInset = true
g.Parent         = (gethui and gethui()) or PL.PlayerGui

-- ─── Anti-AFK ────────────────────────────────────────────────────────────────
pcall(function()
    for _, connection in pairs(getconnections(PL.Idled)) do
        if connection["Disable"] then connection["Disable"](connection)
        elseif connection["Disconnect"] then connection["Disconnect"](connection) end
    end
end)
-- Kill the game's "Auto Reconnect" LocalScript (tracks UIS input, force-rejoins after 1020s idle)
pcall(function()
    local ps = PL:FindFirstChild("PlayerScripts")
    if ps then
        local gameFolder = ps:FindFirstChild("Game")
        if gameFolder then
            local ar = gameFolder:FindFirstChild("Auto Reconnect")
            if ar then ar:Destroy() end
        end
    end
end)
-- Fake input every 60s to reset any remaining UIS-based idle trackers
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

-- ─── Utilities ───────────────────────────────────────────────────────────────
local SFX = {"K","M","B","T","Qa","Qi","Sx","Sp","Oc","No","Dc"}
local function fmt(n)
    if type(n) ~= "number" then return "0" end
    if n < 1000 then return tostring(math.floor(n)) end
    local v, i = n, 0
    while v >= 1000 and i < #SFX do v = v/1000 i = i+1 end
    return string.format("%.2f%s", v, SFX[i])
end
local function fmtTime(s)
    local h = math.floor(s/3600)
    local m = math.floor(s/60) % 60
    local sc = math.floor(s) % 60
    return h > 0 and string.format("%d:%02d:%02d",h,m,sc) or string.format("%d:%02d",m,sc)
end

-- ─── State Persistence ───────────────────────────────────────────────────────
local STATE_FILE = "clickerSim_state.json"
local function loadState()
    local ok, data = pcall(function() return HttpService:JSONDecode(readfile(STATE_FILE)) end)
    return (ok and type(data) == "table") and data or {}
end
local function saveState(s)
    pcall(function() writefile(STATE_FILE, HttpService:JSONEncode(s)) end)
end

-- ─── Lazy Module Variables (populated by task.spawn loader AFTER GUI build) ──
local Network, Stats, EggsMod, Directory, Constants, Balancing, MasteryCmds, AchievementsCmds, Settings, OpenEgg, EnchantRolling
local origOpenEggOpen = nil
local openEggHooked = false
local realOpenEgg = nil -- game's actual OpenEgg table (found via getgc)
local origEnchantRollingStart = nil
local enchantRollingHooked = false
local clickCh, eggCh, rebirthCh, petsCh, portalsCh, grandChestCh, dailyCh, freeGiftsCh, achieveCh, breakablesCh, chestsCh, beachChestCh, craftCh

-- ─── Dynamic Egg List ────────────────────────────────────────────────────────
-- Scans workspace._THINGS.Eggs at runtime, pairs with Directory for name/cost
local function buildEggList()
    local results = {}
    local things = workspace:FindFirstChild("_THINGS")
    local eggFolder = things and things:FindFirstChild("Eggs")
    if not eggFolder then return results end
    local eggsDir = nil
    if Directory then
        local ok, ed = pcall(function() return Directory.Eggs end)
        if ok and ed then eggsDir = ed end
    end
    for _, egg in ipairs(eggFolder:GetChildren()) do
        if egg.Name:find("Robux") or egg.Name:find("Exclusive") then continue end
        local name = egg.Name
        local costNum = 0
        local costStr = ""
        if eggsDir then
            local ok, ed = pcall(function() return eggsDir[egg.Name] end)
            if ok and ed then
                if ed.Name then name = ed.Name end
                if ed.Info and ed.Info.Cost then
                    costNum = ed.Info.Cost
                    costStr = fmt(costNum)
                end
            end
        end
        local display = costStr ~= "" and (name .. " - " .. costStr) or name
        table.insert(results, { value = egg.Name, display = display, cost = costNum })
    end
    table.sort(results, function(a, b) return (a.cost or 0) < (b.cost or 0) end)
    return results
end

local RARITY_COLORS = {
    Basic     = Color3.fromRGB(180, 180, 180),
    Rare      = Color3.fromRGB(100, 180, 255),
    Epic      = Color3.fromRGB(180, 100, 255),
    Legendary = Color3.fromRGB(255, 200, 50),
    Mythic    = Color3.fromRGB(255, 80, 80),
    Mythical  = Color3.fromRGB(255, 80, 80),
    Special   = Color3.fromRGB(255, 140, 200),
    Secret    = Color3.fromRGB(255, 50, 150),
    Unknown   = Color3.fromRGB(150, 150, 150),
}

local function getEggPets(eggId)
    if not Directory then return {} end
    local eggData = Directory.Eggs[eggId]
    if not eggData or not eggData.Pets then return {} end
    local pets = {}
    for _, p in ipairs(eggData.Pets) do
        local petInfo = Directory.Pets[p.Value]
        local chance = p.Weight
        local chanceStr
        if chance >= 1 then chanceStr = string.format("%.1f%%", chance)
        elseif chance >= 0.01 then chanceStr = string.format("%.3f%%", chance)
        else chanceStr = string.format("1 in %s", fmt(100 / chance)) end
        table.insert(pets, {
            id        = p.Value,
            weight    = p.Weight,
            rarity    = petInfo and petInfo.Rarity or "Unknown",
            name      = petInfo and petInfo.Name or p.Value,
            chanceStr = chanceStr,
        })
    end
    table.sort(pets, function(a, b) return a.weight > b.weight end)
    return pets
end

local function getEggName(eggId)
    if not Directory then return eggId end
    local eggData = Directory.Eggs[eggId]
    return eggData and eggData.Name or eggId
end

-- ─── Auto Click ──────────────────────────────────────────────────────────────
do
    local active = false
    task.spawn(function()
        while true do
            if not clickCh then task.wait(0.5) continue end
            if active then
                pcall(function() clickCh:FireServer("Click") end)
                task.wait(jitter(0.005, 0.3))
            else
                task.wait()
            end
        end
    end)
    _G.AutoClick = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(v) if v == nil then active = not active else active = v end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Hatch ──────────────────────────────────────────────────────────────
do
    local active     = false
    local selectedEgg = nil
    local deleteSet  = {}
    local autoDeleteEnabled = false
    local prevEgg = nil
    local animActive = false

    local function suppressAnimations(eggId)
        if animActive then return end
        animActive = true
        -- Find real OpenEgg via getgc if not yet found
        if not realOpenEgg then
            pcall(function()
                if not getgc then return end
                for _, obj in ipairs(getgc(true)) do
                    if type(obj) == "table"
                       and type(rawget(obj, "Open")) == "function"
                       and type(rawget(obj, "new")) == "function"
                       and type(rawget(obj, "GetNewBatchId")) == "function" then
                        realOpenEgg = obj
                        break
                    end
                end
            end)
        end
        -- Hook OpenEgg.Open via hookfunction (native-level, survives instance differences)
        if not openEggHooked then
            pcall(function()
                local target = realOpenEgg or OpenEgg
                if not target or not target.Open then return end
                if hookfunction then
                    origOpenEggOpen = hookfunction(target.Open, function() end)
                else
                    origOpenEggOpen = target.Open
                    target.Open = function() end
                end
                openEggHooked = true
            end)
            -- Also hook our require'd copy if different from the real one
            if realOpenEgg and OpenEgg and realOpenEgg ~= OpenEgg then
                pcall(function() OpenEgg.Open = function() end end)
            end
        end
        -- SetHatchBatchHandler backup
        pcall(function()
            if not EggsMod or not Settings then return end
            local origLock = Settings.ShowUI.Lock
            Settings.ShowUI.Lock = function() return function() end end
            EggsMod.SetHatchBatchHandler(eggId, function() end)
            Settings.ShowUI.Lock = origLock
        end)
    end
    local function restoreAnimations(eggId)
        if not animActive then return end
        pcall(function()
            if EggsMod then EggsMod.SetHatchBatchHandler(eggId, nil) end
        end)
        pcall(function()
            if openEggHooked and origOpenEggOpen then
                local target = realOpenEgg or OpenEgg
                if target then
                    if hookfunction then
                        hookfunction(target.Open, origOpenEggOpen)
                    else
                        target.Open = origOpenEggOpen
                    end
                end
                if realOpenEgg and OpenEgg and realOpenEgg ~= OpenEgg then
                    OpenEgg.Open = origOpenEggOpen
                end
                openEggHooked = false
            end
        end)
        animActive = false
    end

    -- Snapshot current pet UIDs for pre/post hatch diffing
    local function getPetUIDs()
        local uids = {}
        pcall(function()
            if not Stats then return end
            local s = Stats.Local(true)
            if s and s.Pets then
                for uid, _ in pairs(s.Pets) do uids[uid] = true end
            end
        end)
        return uids
    end

    task.spawn(function()
        while true do
            task.wait()
            if not eggCh then continue end
            if not active or not selectedEgg then
                if prevEgg then restoreAnimations(prevEgg) prevEgg = nil end
                continue
            end
            if prevEgg ~= selectedEgg then
                if prevEgg then restoreAnimations(prevEgg) end
                suppressAnimations(selectedEgg)
                prevEgg = selectedEgg
            end
            -- Snapshot before hatch
            local shouldDelete = autoDeleteEnabled and petsCh and Stats and next(deleteSet)
            local before = shouldDelete and getPetUIDs() or nil
            -- Hatch
            task.delay(0, function() pcall(function() eggCh:InvokeServer("Hatch", selectedEgg, 8) end) end)
            task.wait(0.1)
            -- Delete new pets immediately after hatch
            if before then
                pcall(function()
                    local s = Stats.Local(true)
                    if not s or not s.Pets then return end
                    local ep = s.EquippedPets
                    local toDelete = {}
                    for uid, pet in pairs(s.Pets) do
                        if not before[uid] and type(pet) == "table" and pet.id
                           and deleteSet[pet.id] and not pet.Locked
                           and not (ep and ep[uid]) then
                            table.insert(toDelete, uid)
                        end
                    end
                    if #toDelete > 0 then petsCh:FireServer("DeletePetsBulk", toDelete) end
                end)
            end
        end
    end)

    _G.AutoHatch = {
        enable    = function() active = true; pcall(function() if _G.AutoIndex then _G.AutoIndex.disable() end end) end,
        disable   = function() active = false end,
        toggle    = function(v) if v == nil then v = not active end if v then _G.AutoHatch.enable() else _G.AutoHatch.disable() end end,
        isActive  = function() return active end,
        setEgg    = function(id) selectedEgg = id end,
        getEgg    = function() return selectedEgg end,
        setDelete = function(petId, val) deleteSet[petId] = val or nil end,
        getDelete = function() return deleteSet end,
        clearDelete = function() deleteSet = {} end,
        enableDelete  = function() autoDeleteEnabled = true end,
        disableDelete = function() autoDeleteEnabled = false end,
        toggleDelete  = function(v)
            if v == nil then v = not autoDeleteEnabled end
            autoDeleteEnabled = v
        end,
        isDeleteActive = function() return autoDeleteEnabled end,
    }
end

-- ─── Auto Rebirth ────────────────────────────────────────────────────────────
do
    local active = false
    local threshold = 0

    local function getRebirthCost(rebirths)
        return math.floor(1100 * (math.max(rebirths or 0, 0) * 0.19 + 1))
    end

    local function hasInfiniteRebirths(s)
        if not Directory then return false end
        local ok, val = pcall(function()
            local gpId = tostring(Directory.Gamepasses.InfiniteRebirths.ProductId)
            return s.Gamepasses and s.Gamepasses[gpId] == true
        end)
        return ok and val
    end

    local function getHighestButton(s)
        local best = 3
        if s.OwnedRebirthButtons then
            for idx, _ in pairs(s.OwnedRebirthButtons) do
                local n = tonumber(idx)
                if n and n > best then best = n end
            end
        end
        return best
    end

    task.spawn(function()
        while true do
            task.wait()
            if not rebirthCh or not Stats then continue end
            if not active then continue end
            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.Currency then return end
                local clicks = s.Currency.Clicks or 0
                local baseCost = getRebirthCost(s.Rebirths or 0)
                local mult = 1
                if MasteryCmds then
                    local mok, mval = pcall(function() return MasteryCmds.GetPower(s, "RebirthCostMultiplier") end)
                    if mok and type(mval) == "number" then mult = mval end
                end
                local cost = math.max(1, math.floor(baseCost * mult + 0.5))
                if clicks < cost then return end
                local count = math.floor(clicks / cost)
                if count < 1 then return end
                if threshold > 0 and count < threshold then return end
                if hasInfiniteRebirths(s) then
                    rebirthCh:FireServer("MaxRebirth", count)
                else
                    rebirthCh:FireServer("Rebirth", getHighestButton(s))
                end
            end)
        end
    end)
    _G.AutoRebirth = {
        enable       = function() active = true end,
        disable      = function() active = false end,
        toggle       = function(v) if v == nil then active = not active else active = v end end,
        isActive     = function() return active end,
        setThreshold = function(v) threshold = tonumber(v) or 0 end,
        getThreshold = function() return threshold end,
    }
end

-- ─── Auto Claim ──────────────────────────────────────────────────────────────
do
    local active = false
    task.spawn(function()
        while true do
            task.wait()
            if active and grandChestCh then pcall(function() grandChestCh:InvokeServer("Claim") end) end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if active and dailyCh then pcall(function() dailyCh:InvokeServer("Claim") end) end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if not freeGiftsCh or not active then continue end
            for i = 1, 12 do pcall(function() freeGiftsCh:FireServer("ClaimGift", i) end) end
        end
    end)
    task.spawn(function()
        while true do
            task.wait(jitter(1, 0.3))
            if active and beachChestCh then pcall(function() beachChestCh:InvokeServer("Claim") end) end
        end
    end)
    task.spawn(function()
        while true do
            task.wait()
            if not achieveCh or not AchievementsCmds or not active then continue end
            pcall(function()
                local ordered = AchievementsCmds.GetOrderedAchievements()
                for _, ach in ipairs(ordered) do
                    local id = type(ach) == "table" and ach._id or ach
                    if type(id) == "string" and AchievementsCmds.IsClaimable(id) then
                        achieveCh:FireServer("Claim", id)
                    end
                end
            end)
        end
    end)
    _G.AutoClaim = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(v) if v == nil then active = not active else active = v end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Index ────────────────────────────────────────────────────────────
do
    local active = false
    local variants = { Normal = true, Golden = true, Rainbow = true }
    local statusText = "Idle"
    local animActive = false
    local prevEgg = nil

    local function hasPetVariant(obtained, petId, variant)
        if obtained[petId .. "_" .. variant] then return true end
        if obtained[petId .. "_Shiny_" .. variant] then return true end
        return false
    end

    local function isSecretPet(petId)
        if not Directory or not Directory.Pets then return false end
        local pet = Directory.Pets[petId]
        return pet and pet.Rarity == "Secret"
    end

    local function suppressAnimations(eggId)
        if animActive then return end
        animActive = true
        if not realOpenEgg then
            pcall(function()
                if not getgc then return end
                for _, obj in ipairs(getgc(true)) do
                    if type(obj) == "table"
                       and type(rawget(obj, "Open")) == "function"
                       and type(rawget(obj, "new")) == "function"
                       and type(rawget(obj, "GetNewBatchId")) == "function" then
                        realOpenEgg = obj
                        break
                    end
                end
            end)
        end
        if not openEggHooked then
            pcall(function()
                local target = realOpenEgg or OpenEgg
                if not target or not target.Open then return end
                if hookfunction then
                    origOpenEggOpen = hookfunction(target.Open, function() end)
                else
                    origOpenEggOpen = target.Open
                    target.Open = function() end
                end
                openEggHooked = true
            end)
            if realOpenEgg and OpenEgg and realOpenEgg ~= OpenEgg then
                pcall(function() OpenEgg.Open = function() end end)
            end
        end
        pcall(function()
            if not EggsMod or not Settings then return end
            local origLock = Settings.ShowUI.Lock
            Settings.ShowUI.Lock = function() return function() end end
            EggsMod.SetHatchBatchHandler(eggId, function() end)
            Settings.ShowUI.Lock = origLock
        end)
    end

    local function restoreAnimations(eggId)
        if not animActive then return end
        pcall(function()
            if EggsMod then EggsMod.SetHatchBatchHandler(eggId, nil) end
        end)
        pcall(function()
            if openEggHooked and origOpenEggOpen then
                local target = realOpenEgg or OpenEgg
                if target then
                    if hookfunction then
                        hookfunction(target.Open, origOpenEggOpen)
                    else
                        target.Open = origOpenEggOpen
                    end
                end
                if realOpenEgg and OpenEgg and realOpenEgg ~= OpenEgg then
                    OpenEgg.Open = origOpenEggOpen
                end
                openEggHooked = false
            end
        end)
        animActive = false
    end

    local function buildIndexQueue()
        local queue = {}
        local eggs = buildEggList()
        if not Stats or not Directory then return queue end
        local ok, obtained = pcall(function() return Stats.Local(true).ObtainedPets end)
        if not ok or not obtained then obtained = {} end
        for _, egg in ipairs(eggs) do
            local eggId = egg.value
            local eggData = Directory.Eggs[eggId]
            if not eggData or not eggData.Pets then continue end
            local missing = false
            for _, p in ipairs(eggData.Pets) do
                local petId = p.Value
                if not isSecretPet(petId) then
                    for vName, vOn in pairs(variants) do
                        if vOn and not hasPetVariant(obtained, petId, vName) then
                            missing = true
                            break
                        end
                    end
                end
                if missing then break end
            end
            if missing then
                table.insert(queue, { eggId = eggId, eggName = egg.display })
            end
        end
        return queue
    end

    task.spawn(function()
        while true do
            task.wait()
            if not eggCh or not Stats or not Directory then continue end
            if not active then
                if prevEgg then restoreAnimations(prevEgg) prevEgg = nil end
                continue
            end
            local queue = buildIndexQueue()
            if #queue == 0 then
                statusText = "Index Complete!"
                active = false
                if prevEgg then restoreAnimations(prevEgg) prevEgg = nil end
                continue
            end
            local target = queue[1]
            statusText = "Hatching: " .. target.eggName
            if prevEgg ~= target.eggId then
                if prevEgg then restoreAnimations(prevEgg) end
                suppressAnimations(target.eggId)
                prevEgg = target.eggId
            end
            pcall(function() eggCh:InvokeServer("Hatch", target.eggId, 8) end)
        end
    end)

    _G.AutoIndex = {
        enable   = function()
            active = true
            statusText = "Idle"
            pcall(function() if _G.AutoHatch then _G.AutoHatch.disable() end end)
        end,
        disable  = function() active = false end,
        toggle   = function(v)
            if v == nil then v = not active end
            if v then _G.AutoIndex.enable() else _G.AutoIndex.disable() end
        end,
        isActive = function() return active end,
        setVariant = function(name, val) variants[name] = val end,
        getVariants = function() return variants end,
        getStatus = function() return statusText end,
    }
end

-- ─── Auto Unlock Area ───────────────────────────────────────────────────────
local ISLANDS = {"Spawn","Winter","Forest","Desert","Candy","Beach","Sakura","Volcano","Rave","Heaven"}
do
    local active = false
    task.spawn(function()
        while true do
            task.wait(jitter(2, 0.3))
            if not active or not portalsCh or not Stats then continue end
            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.UnlockedIslands then return end
                local unlocked = {}
                for _, name in ipairs(s.UnlockedIslands) do unlocked[name] = true end
                for _, island in ipairs(ISLANDS) do
                    if not unlocked[island] then
                        portalsCh:InvokeServer("PurchaseIsland", island)
                        break
                    end
                end
            end)
        end
    end)
    _G.AutoUnlockArea = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(v) if v == nil then active = not active else active = v end end,
        isActive = function() return active end,
    }
end

-- ─── Turbo Pets ─────────────────────────────────────────────────────────────
do
    local active = false
    task.spawn(function()
        while true do
            task.wait(jitter(0.01, 0.3))
            if not active or not breakablesCh or not Stats then continue end
            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.EquippedPets or not s.Pets then return end
                local things = workspace:FindFirstChild("_THINGS")
                if not things then return end
                local breakables = things:FindFirstChild("Breakables")
                if not breakables then return end
                local root = PL.Character and PL.Character:FindFirstChild("HumanoidRootPart")
                if not root then return end
                local pos = root.Position
                local target = nil
                local closest = 80
                for _, obj in ipairs(breakables:GetDescendants()) do
                    if obj:IsA("Model") and obj:GetAttribute("BreakableUID") then
                        local ok2, pivot = pcall(function() return obj:GetPivot().Position end)
                        if ok2 then
                            local dist = (pivot - pos).Magnitude
                            if dist < closest then closest = dist target = obj:GetAttribute("BreakableUID") end
                        end
                    end
                end
                if not target then return end
                for guid, equipped in pairs(s.EquippedPets) do
                    if equipped and s.Pets[guid] then
                        pcall(function() breakablesCh:InvokeServer("Hit", target, guid) end)
                    end
                end
            end)
        end
    end)
    _G.TurboPets = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(v) if v == nil then active = not active else active = v end end,
        isActive = function() return active end,
    }
end

-- ─── Pet Multiplier (file-scope, used by Auto Delete Low / Pet Crafting UI) ─
local function computePetMultiplier(pet)
    if not Directory or not pet or not pet.id then return 0 end
    local ok, result = pcall(function()
        local petDir = Directory.Pets[pet.id]
        if not petDir or not petDir.Stats then return 0 end
        local base = petDir.Stats.Clicks or 0
        if pet.v and pet.v ~= "Normal" then
            local vars = Directory.PetVariants
            local varData = vars and vars[pet.v]
            if varData and varData.Multi then base = base * varData.Multi end
        end
        if pet.Shiny then
            local vars = Directory.PetVariants
            local shinyData = vars and vars.Shiny
            base = base * (shinyData and shinyData.Multi or 1.25)
        end
        if pet.m and type(pet.m) == "table" then
            local muts = Directory.Mutations
            if muts then
                for mutId, _ in pairs(pet.m) do
                    local mutData = muts[mutId]
                    if mutData and mutData.Multi then base = base * mutData.Multi end
                end
            end
        end
        return base
    end)
    return ok and result or 0
end

-- ─── Pet Inventory Helper (used by Pet Crafting dropdown) ──────────────────
local function buildPetInventory()
    local inv = {}
    if not Stats or not Directory then return inv end
    pcall(function()
        local s = Stats.Local(true)
        if not s or not s.Pets then return end
        for uid, pet in pairs(s.Pets) do
            if type(pet) == "table" and pet.id then
                if not inv[pet.id] then
                    local name = pet.id
                    local mult = 0
                    pcall(function()
                        local pd = Directory.Pets[pet.id]
                        if pd then
                            name = pd.Name or pet.id
                            mult = pd.Stats and pd.Stats.Clicks or 0
                        end
                    end)
                    inv[pet.id] = { name = name, mult = mult, normalCount = 0, goldenCount = 0, rainbowCount = 0, totalCount = 0 }
                end
                local entry = inv[pet.id]
                entry.totalCount = entry.totalCount + 1
                if pet.v == "Golden" then
                    entry.goldenCount = entry.goldenCount + 1
                elseif pet.v == "Rainbow" then
                    entry.rainbowCount = entry.rainbowCount + 1
                elseif not pet.v or pet.v == "Normal" then
                    entry.normalCount = entry.normalCount + 1
                end
            end
        end
    end)
    return inv
end

-- ─── Auto Delete Low ──────────────────────────────────────────────────────
do
    local active = false
    local multThreshold = 0

    task.spawn(function()
        while true do
            task.wait(jitter(1, 0.3))
            if not active or not petsCh or not Stats or not Directory then continue end
            if multThreshold <= 0 then continue end
            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.Pets then return end
                local ep = s.EquippedPets
                local toDelete = {}
                for uid, pet in pairs(s.Pets) do
                    if type(pet) == "table" and pet.id and not pet.Locked
                       and not (ep and ep[uid]) then
                        local mult = computePetMultiplier(pet)
                        if mult > 0 and mult < multThreshold then
                            table.insert(toDelete, uid)
                        end
                    end
                end
                if #toDelete > 0 then petsCh:FireServer("DeletePetsBulk", toDelete) end
            end)
        end
    end)

    _G.AutoDeleteLow = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(v) if v == nil then active = not active else active = v end end,
        isActive = function() return active end,
        setThreshold = function(v) multThreshold = tonumber(v) or 0 end,
        getThreshold = function() return multThreshold end,
    }
end

-- ─── Auto Craft ──────────────────────────────────────────────────────────────
do
    local active = false
    local selectedRecipes = {} -- {[recipeId] = true}
    local craftAmount = 1
    local statusText = "Idle"

    local function getTier(recipeId, recipe)
        if recipe then
            if recipe.Tier then return recipe.Tier end
            if recipe.Level then return recipe.Level end
        end
        local t = recipeId:match("[_%-]T(%d+)$") or recipeId:match("[_%-]Tier(%d+)$") or recipeId:match("(%d+)$")
        return t and tonumber(t) or nil
    end

    local function getRecipeName(recipeId)
        if not Directory then return recipeId end
        local ok, name = pcall(function()
            local recipe = Directory.PotionRecipes[recipeId]
            if not recipe then return recipeId end
            local base
            if recipe.PetId and Directory.Pets[recipe.PetId] then
                base = Directory.Pets[recipe.PetId].Name
            elseif recipe.ItemId and Directory.Items and Directory.Items[recipe.ItemId] then
                base = Directory.Items[recipe.ItemId].Name
            else
                base = recipe.Name or recipeId
            end
            local tier = getTier(recipeId, recipe)
            if tier then base = base .. " (T" .. tier .. ")" end
            return base
        end)
        return ok and name or recipeId
    end

    -- Build a priority-sorted recipe list: lowest tier first, non-tiered last
    local function getSortedRecipes()
        local list = {}
        for id, _ in pairs(selectedRecipes) do
            local tier = 6
            pcall(function()
                if Directory and Directory.PotionRecipes then
                    local r = Directory.PotionRecipes[id]
                    local t = getTier(id, r)
                    if t then tier = t end
                end
            end)
            table.insert(list, { id = id, tier = tier })
        end
        table.sort(list, function(a, b)
            if a.tier ~= b.tier then return a.tier < b.tier end
            return a.id < b.id
        end)
        return list
    end

    -- Shared slot snapshot for GUI
    local slotSnapshot = {}
    local lastSlotCount = 0

    local function readSlots()
        local result = {}
        if not Stats then return result end
        local ok, s = pcall(function() return Stats.Local(true) end)
        if not ok or not s then return result end
        local potionCrafts = s.PotionCrafts or {}
        for k, v in pairs(potionCrafts) do
            if type(v) == "table" then
                local ts = v.EndTimestamp or v.endTimestamp or v.FinishTime or v.finishTime
                table.insert(result, {
                    key = k, craft = v, ts = ts,
                    done = ts and os.time() >= ts or false,
                })
            end
        end
        table.sort(result, function(a, b) return tostring(a.key) < tostring(b.key) end)
        return result
    end

    -- Detect which slot index format the game uses (done once on first successful start)
    local detectedBase = nil -- nil = unknown, 0 or 1

    local function tryStartSlot(slotNum, recipe)
        -- Try desired amount first, then fallback to 1 (avoid 6 round-trips)
        local ok2, res = pcall(function()
            return craftCh:InvokeServer("StartCraft", slotNum, recipe, craftAmount)
        end)
        if ok2 and res ~= false then return true end
        if craftAmount > 1 then
            ok2, res = pcall(function()
                return craftCh:InvokeServer("StartCraft", slotNum, recipe, 1)
            end)
            if ok2 and res ~= false then return true end
        end
        return false
    end

    -- Fast check loop: reads state every frame, only fires when needed
    task.spawn(function()
        local actionCooldown = 0
        while true do
            task.wait()
            -- Always update snapshot for GUI
            slotSnapshot = readSlots()
            lastSlotCount = #slotSnapshot

            if not craftCh or not active then continue end

            local recipes = getSortedRecipes()
            if #recipes == 0 then
                statusText = "No recipe selected"
                continue
            end

            local hasDone = false
            for _, slot in ipairs(slotSnapshot) do
                if slot.done then hasDone = true; break end
            end
            local hasEmpty = lastSlotCount < 6

            -- Only fire when actionable + cooldown elapsed
            if (hasDone or hasEmpty) and os.clock() >= actionCooldown then
                actionCooldown = os.clock() + 1.5

                -- Claim all finished crafts
                if hasDone then
                    for _, slot in ipairs(slotSnapshot) do
                        if slot.done then
                            statusText = "Claiming slot " .. tostring(slot.key)
                            pcall(function() craftCh:InvokeServer("ClaimCraft", slot.key) end)
                        end
                    end
                elseif hasEmpty then
                    -- Build set of occupied keys
                    local occupiedKeys = {}
                    for _, slot in ipairs(slotSnapshot) do
                        occupiedKeys[tostring(slot.key)] = true
                        occupiedKeys[slot.key] = true
                    end

                    -- Determine which slot ranges to try
                    local ranges
                    if detectedBase == 1 then ranges = {{1, 6}}
                    elseif detectedBase == 0 then ranges = {{0, 5}}
                    else ranges = {{1, 6}, {0, 5}} end

                    for _, base in ipairs(ranges) do
                        local emptySlots = {}
                        for slotNum = base[1], base[2] do
                            local key = tostring(slotNum)
                            if not occupiedKeys[key] and not occupiedKeys[slotNum] then
                                table.insert(emptySlots, slotNum)
                            end
                        end
                        if #emptySlots == 0 then continue end

                        -- Fill each empty slot: try each recipe in priority order
                        local started = false
                        for _, slotNum in ipairs(emptySlots) do
                            for _, r in ipairs(recipes) do
                                if tryStartSlot(slotNum, r.id) then
                                    started = true
                                    if not detectedBase then detectedBase = base[1] end
                                    break -- slot filled, move to next slot
                                end
                            end
                        end
                        if started then break end -- this range worked
                    end
                end
            end

            -- Status update (every frame)
            if not hasDone then
                local names = {}
                for _, r in ipairs(recipes) do table.insert(names, getRecipeName(r.id)) end
                local nameStr = table.concat(names, ", ")
                if lastSlotCount > 0 then
                    statusText = "Crafting: " .. nameStr .. " (" .. lastSlotCount .. "/6)"
                else
                    statusText = "Starting crafts..."
                end
            end
        end
    end)

    _G.AutoCraft = {
        enable     = function() active = true end,
        disable    = function() active = false; statusText = "Idle" end,
        toggle     = function(v) if v == nil then v = not active end if v then _G.AutoCraft.enable() else _G.AutoCraft.disable() end end,
        isActive   = function() return active end,
        addRecipe  = function(id) selectedRecipes[id] = true end,
        removeRecipe = function(id) selectedRecipes[id] = nil end,
        toggleRecipe = function(id) if selectedRecipes[id] then selectedRecipes[id] = nil else selectedRecipes[id] = true end end,
        hasRecipe  = function(id) return selectedRecipes[id] == true end,
        getRecipes = function() return selectedRecipes end,
        clearRecipes = function() selectedRecipes = {} end,
        setAmount  = function(n) craftAmount = math.clamp(tonumber(n) or 1, 1, 6) end,
        getAmount  = function() return craftAmount end,
        getStatus  = function() return statusText end,
        getSlotSnapshot = function() return slotSnapshot end,
    }
end

-- ─── Auto Golden ─────────────────────────────────────────────────────────────
do
    local active = false
    local selectedPets = {} -- {["petId::modTag"] = true}
    local goldenAmount = 6
    local statusText = "Idle"

    task.spawn(function()
        while true do
            task.wait(0.25)
            if not active or not petsCh or not Stats or not Directory then continue end
            local any = false
            for _ in pairs(selectedPets) do any = true; break end
            if not any then statusText = "No pets selected"; continue end

            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.Pets then return end
                local ep = s.EquippedPets or {}

                for compositeKey in pairs(selectedPets) do
                    local petId, wantTag = compositeKey:match("^(.+)|(.+)$")
                    if not petId then petId = compositeKey; wantTag = "none" end
                    local uuids = {}
                    for uid, pet in pairs(s.Pets) do
                        if type(pet) == "table" and pet.id == petId
                           and (not pet.v or pet.v == "Normal")
                           and not pet.Locked and not ep[uid] then
                            local tag = "none"
                            if pet.Shiny or (pet.m and type(pet.m) == "table" and next(pet.m)) then
                                local t = {}
                                if pet.Shiny then table.insert(t, "Shiny") end
                                if pet.m and type(pet.m) == "table" then
                                    local sr = {}
                                    for mi in pairs(pet.m) do table.insert(sr, mi) end
                                    table.sort(sr)
                                    for _, mi in ipairs(sr) do local n = mi:gsub("(%l)(%u)", "%1 %2"); table.insert(t, n) end
                                end
                                tag = table.concat(t, "+")
                            end
                            if tag == wantTag then
                                table.insert(uuids, uid)
                                if #uuids >= goldenAmount then break end
                            end
                        end
                    end
                    if #uuids >= goldenAmount then
                        statusText = "Crafting golden " .. petId
                        petsCh:InvokeServer("CraftGolden", uuids)
                    end
                end
                statusText = "Running"
            end)
        end
    end)

    _G.AutoGolden = {
        enable     = function() active = true end,
        disable    = function() active = false; statusText = "Idle" end,
        toggle     = function(v) if v == nil then v = not active end; if v then _G.AutoGolden.enable() else _G.AutoGolden.disable() end end,
        isActive   = function() return active end,
        addPet     = function(id) selectedPets[id] = true end,
        removePet  = function(id) selectedPets[id] = nil end,
        togglePet  = function(id) if selectedPets[id] then selectedPets[id] = nil else selectedPets[id] = true end end,
        hasPet     = function(id) return selectedPets[id] == true end,
        getPets    = function() return selectedPets end,
        clearPets  = function() selectedPets = {} end,
        setAmount  = function(n) goldenAmount = math.clamp(tonumber(n) or 6, 1, 6) end,
        getAmount  = function() return goldenAmount end,
        getStatus  = function() return statusText end,
    }
end

-- ─── Auto Rainbow ────────────────────────────────────────────────────────────
do
    local active = false
    local selectedPets = {} -- {["petId::modTag"] = true}
    local rainbowAmount = 6
    local statusText = "Idle"
    local slotSnapshot = {} -- {[1]={...}, [2]={...}, [3]={...}}

    local function readRainbowSlots()
        local result = {}
        if not Stats then return result end
        local ok, s = pcall(function() return Stats.Local(true) end)
        if not ok or not s then return result end
        local rc = s.RainbowCrafts or {}
        for k, v in pairs(rc) do
            if type(v) == "table" then
                local ts = v.EndTimestamp or v.endTimestamp or v.FinishTime or v.finishTime
                result[k] = { key = k, craft = v, ts = ts }
            end
        end
        return result
    end

    task.spawn(function()
        local actionCooldown = 0
        while true do
            task.wait(0.25)
            slotSnapshot = readRainbowSlots()

            if not active or not petsCh or not Stats or not Directory then continue end

            local any = false
            for _ in pairs(selectedPets) do any = true; break end
            if not any then statusText = "No pets selected"; continue end

            if os.clock() < actionCooldown then continue end

            local now = nil
            pcall(function() now = workspace:GetServerTimeNow() end)
            if not now then now = os.time() end

            -- Claim finished slots
            local claimed = false
            for slotIdx, slot in pairs(slotSnapshot) do
                if slot.ts and now >= slot.ts then
                    statusText = "Claiming rainbow slot " .. tostring(slotIdx)
                    pcall(function() petsCh:InvokeServer("ClaimRainbowCraft", slotIdx) end)
                    claimed = true
                end
            end
            if claimed then
                actionCooldown = os.clock() + 1.5
                continue
            end

            -- Count occupied slots
            local occupied = 0
            for _ in pairs(slotSnapshot) do occupied = occupied + 1 end
            if occupied >= 3 then
                statusText = "All 3 slots active"
                continue
            end

            -- Start new crafts in empty slots
            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.Pets then return end
                local ep = s.EquippedPets or {}

                for compositeKey in pairs(selectedPets) do
                    local petId, wantTag = compositeKey:match("^(.+)|(.+)$")
                    if not petId then petId = compositeKey; wantTag = "none" end
                    local curOccupied = 0
                    for _ in pairs(slotSnapshot) do curOccupied = curOccupied + 1 end
                    if curOccupied >= 3 then break end

                    local uuids = {}
                    for uid, pet in pairs(s.Pets) do
                        if type(pet) == "table" and pet.id == petId
                           and pet.v == "Golden"
                           and not pet.Locked and not ep[uid] then
                            local tag = "none"
                            if pet.Shiny or (pet.m and type(pet.m) == "table" and next(pet.m)) then
                                local t = {}
                                if pet.Shiny then table.insert(t, "Shiny") end
                                if pet.m and type(pet.m) == "table" then
                                    local sr = {}
                                    for mi in pairs(pet.m) do table.insert(sr, mi) end
                                    table.sort(sr)
                                    for _, mi in ipairs(sr) do local n = mi:gsub("(%l)(%u)", "%1 %2"); table.insert(t, n) end
                                end
                                tag = table.concat(t, "+")
                            end
                            if tag == wantTag then
                                table.insert(uuids, uid)
                                if #uuids >= rainbowAmount then break end
                            end
                        end
                    end
                    if #uuids >= rainbowAmount then
                        statusText = "Starting rainbow " .. petId
                        petsCh:InvokeServer("StartRainbowCraft", uuids)
                        actionCooldown = os.clock() + 2
                        break
                    end
                end
                if os.clock() < actionCooldown then return end
                statusText = "Running"
            end)
        end
    end)

    _G.AutoRainbow = {
        enable     = function() active = true end,
        disable    = function() active = false; statusText = "Idle" end,
        toggle     = function(v) if v == nil then v = not active end; if v then _G.AutoRainbow.enable() else _G.AutoRainbow.disable() end end,
        isActive   = function() return active end,
        addPet     = function(id) selectedPets[id] = true end,
        removePet  = function(id) selectedPets[id] = nil end,
        togglePet  = function(id) if selectedPets[id] then selectedPets[id] = nil else selectedPets[id] = true end end,
        hasPet     = function(id) return selectedPets[id] == true end,
        getPets    = function() return selectedPets end,
        clearPets  = function() selectedPets = {} end,
        setAmount  = function(n) rainbowAmount = math.clamp(tonumber(n) or 6, 1, 6) end,
        getAmount  = function() return rainbowAmount end,
        getStatus  = function() return statusText end,
        getSlotSnapshot = function() return slotSnapshot end,
    }
end

-- ─── Auto Enchant ───────────────────────────────────────────────────────────
do
    local active = false
    local selectedPets = {}     -- {[uuid] = true}
    local desiredEnchant = nil  -- enchant ID string e.g. "ClickSpeed"
    local desiredMinTier = 1    -- 1-5
    local statusText = "Idle"

    local function hookEnchantAnim()
        if enchantRollingHooked then return end
        pcall(function()
            if not EnchantRolling then return end
            if type(EnchantRolling.Start) == "function" then
                origEnchantRollingStart = EnchantRolling.Start
                EnchantRolling.Start = function() end
                enchantRollingHooked = true
            end
        end)
    end

    local function unhookEnchantAnim()
        if not enchantRollingHooked then return end
        pcall(function()
            if EnchantRolling and origEnchantRollingStart then
                EnchantRolling.Start = origEnchantRollingStart
            end
        end)
        enchantRollingHooked = false
    end

    task.spawn(function()
        while true do
            task.wait(0.1)
            if not active or not petsCh or not Stats then continue end
            if not desiredEnchant or not next(selectedPets) then continue end
            hookEnchantAnim()
            pcall(function()
                local s = Stats.Local(true)
                if not s or not s.Pets then return end
                local uuids = {}
                for uuid in pairs(selectedPets) do table.insert(uuids, uuid) end
                local toRemove = {}
                for _, uuid in ipairs(uuids) do
                    local pet = s.Pets[uuid]
                    if not pet then table.insert(toRemove, uuid); continue end
                    if pet.Enchant and pet.Enchant.Id == desiredEnchant
                       and pet.Enchant.Tier >= desiredMinTier then
                        table.insert(toRemove, uuid)
                        continue
                    end
                    local remaining = #uuids - #toRemove
                    statusText = "Rolling: " .. (pet.id or "?") .. " (" .. remaining .. " left)"
                    local ok, eid, etier = petsCh:InvokeServer("RollEnchant", uuid)
                    if not ok then
                        statusText = "No Enchant Relics"
                        for _, r in ipairs(toRemove) do selectedPets[r] = nil end
                        active = false
                        unhookEnchantAnim()
                        return
                    end
                    if eid == desiredEnchant and etier >= desiredMinTier then
                        table.insert(toRemove, uuid)
                        statusText = "Got it: " .. (pet.id or "?")
                    end
                    for _, r in ipairs(toRemove) do selectedPets[r] = nil end
                    return
                end
                for _, r in ipairs(toRemove) do selectedPets[r] = nil end
                if not next(selectedPets) then statusText = "All done"; active = false; unhookEnchantAnim() end
            end)
        end
    end)

    _G.AutoEnchant = {
        enable     = function() active = true; hookEnchantAnim() end,
        disable    = function() active = false; statusText = "Idle"; unhookEnchantAnim() end,
        toggle     = function(v) if v == nil then v = not active end; if v then _G.AutoEnchant.enable() else _G.AutoEnchant.disable() end end,
        isActive   = function() return active end,
        addPet     = function(uuid) selectedPets[uuid] = true end,
        removePet  = function(uuid) selectedPets[uuid] = nil end,
        togglePet  = function(uuid) if selectedPets[uuid] then selectedPets[uuid] = nil else selectedPets[uuid] = true end end,
        hasPet     = function(uuid) return selectedPets[uuid] == true end,
        getPets    = function() return selectedPets end,
        clearPets  = function() selectedPets = {} end,
        setEnchant = function(id) desiredEnchant = id end,
        getEnchant = function() return desiredEnchant end,
        setMinTier = function(t) desiredMinTier = math.clamp(tonumber(t) or 1, 1, 5) end,
        getMinTier = function() return desiredMinTier end,
        getStatus  = function() return statusText end,
    }
end

-- ─── Teleport ────────────────────────────────────────────────────────────────
_G.TeleportTo = {
    fire = function(island)
        pcall(function() if portalsCh then portalsCh:InvokeServer("TeleportToIsland", island) end end)
    end,
}

-- ─── Rejoin / Server Hop ─────────────────────────────────────────────────────
_G.Rejoin   = { fire = function() pcall(function() TPS:TeleportToPlaceInstance(game.PlaceId, game.JobId, PL) end) end }
_G.ServerHop = { fire = function() pcall(function() TPS:Teleport(game.PlaceId, PL) end) end }

-- ─── Memory Cleanup ─────────────────────────────────────────────────────────
task.spawn(function()
    while true do task.wait(300) pcall(function() collectgarbage("collect") end) end
end)

-- ─── Toggle Definitions ──────────────────────────────────────────────────────
local TOGGLE_DEFS = {
    { label = "Auto Click",      key = "autoClick",     getApi = function() return _G.AutoClick end,     tip = "Clicks as fast as the server allows" },
    { label = "Auto Rebirth",    key = "autoRebirth",   getApi = function() return _G.AutoRebirth end,   tip = "Max rebirths using infinite rebirths gamepass" },
    { label = "Auto Claim",      key = "autoClaim",     getApi = function() return _G.AutoClaim end,     tip = "Claims Grand Chest, Daily, Free Gifts, and Milestones" },
    { label = "Auto Unlock Area", key = "autoUnlockArea", getApi = function() return _G.AutoUnlockArea end, tip = "Auto purchases the next locked island" },
    { label = "Turbo Pets",       key = "turboPets",      getApi = function() return _G.TurboPets end,      tip = "Pets attack blocks at max speed (~100ms)" },
    { label = "Auto Delete Low", key = "autoDeleteLow",  getApi = function() return _G.AutoDeleteLow end,  tip = "Deletes non-locked pets below the set multiplier" },
    { label = "Auto Index",      key = "autoIndex",      getApi = function() return _G.AutoIndex end,      tip = "Auto-hatches eggs to complete the pet Index" },
}
local EXPLOIT_DEFS = {}

-- ─── Restore Toggle States ──────────────────────────────────────────────────
local savedState = loadState()
for _, def in ipairs(TOGGLE_DEFS) do
    if savedState[def.key] then
        local api = def.getApi()
        if api then pcall(function() api.enable() end) end
    end
end
if savedState.autoHatch then pcall(function() _G.AutoHatch.enable() end) end
if savedState.selectedEgg then pcall(function() _G.AutoHatch.setEgg(savedState.selectedEgg) end) end
if savedState.deleteSet and type(savedState.deleteSet) == "table" then
    for petId, _ in pairs(savedState.deleteSet) do
        pcall(function() _G.AutoHatch.setDelete(petId, true) end)
    end
end
if savedState.rebirthThreshold then pcall(function() _G.AutoRebirth.setThreshold(savedState.rebirthThreshold) end) end
if savedState.autoDelete then pcall(function() _G.AutoHatch.enableDelete() end) end
if savedState.autoIndex then pcall(function() _G.AutoIndex.enable() end) end
if savedState.deleteMultThreshold then pcall(function() _G.AutoDeleteLow.setThreshold(savedState.deleteMultThreshold) end) end
if savedState.indexVariants and type(savedState.indexVariants) == "table" then
    for v, on in pairs(savedState.indexVariants) do
        pcall(function() _G.AutoIndex.setVariant(v, on) end)
    end
end
if savedState.autoCraft then pcall(function() _G.AutoCraft.enable() end) end
if savedState.craftRecipes and type(savedState.craftRecipes) == "table" then
    for id, _ in pairs(savedState.craftRecipes) do pcall(function() _G.AutoCraft.addRecipe(id) end) end
end
if savedState.craftAmount then pcall(function() _G.AutoCraft.setAmount(savedState.craftAmount) end) end
if savedState.autoGolden then pcall(function() _G.AutoGolden.enable() end) end
if savedState.goldenPets and type(savedState.goldenPets) == "table" then
    for id, _ in pairs(savedState.goldenPets) do pcall(function() _G.AutoGolden.addPet(id) end) end
end
if savedState.goldenAmount then pcall(function() _G.AutoGolden.setAmount(savedState.goldenAmount) end) end
if savedState.autoRainbow then pcall(function() _G.AutoRainbow.enable() end) end
if savedState.rainbowPets and type(savedState.rainbowPets) == "table" then
    for id, _ in pairs(savedState.rainbowPets) do pcall(function() _G.AutoRainbow.addPet(id) end) end
end
if savedState.rainbowAmount then pcall(function() _G.AutoRainbow.setAmount(savedState.rainbowAmount) end) end
if savedState.enchantId then pcall(function() _G.AutoEnchant.setEnchant(savedState.enchantId) end) end
if savedState.enchantMinTier then pcall(function() _G.AutoEnchant.setMinTier(savedState.enchantMinTier) end) end
if savedState.enchantPets and type(savedState.enchantPets) == "table" then
    for uuid, _ in pairs(savedState.enchantPets) do pcall(function() _G.AutoEnchant.addPet(uuid) end) end
end
if savedState.autoEnchant then pcall(function() _G.AutoEnchant.enable() end) end

-- ─── Layout Constants ────────────────────────────────────────────────────────
local IS_MOBILE = UIS.TouchEnabled and not UIS.MouseEnabled
local VP_X = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize.X or 800
local W        = IS_MOBILE and math.clamp(math.floor(VP_X * 0.88), 240, 360) or 299
local ROW_H    = IS_MOBILE and 32 or 26
local HALF_W   = math.floor((W - 17) / 2)
local LBL_W    = 44
local VAL_W    = 104
local SX = {
    lbl1 = 0,
    val1 = LBL_W + 1,
    lbl2 = LBL_W + 1 + VAL_W + 1,
    val2 = LBL_W + 1 + VAL_W + 1 + LBL_W + 1,
}

-- ─── Theme ───────────────────────────────────────────────────────────────────
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

-- ═══════════════════════════════════════════════════════════════════════════════
-- GUI BUILD — All Instance.new calls happen here, on main thread, BEFORE any
-- require(). The main thread still has Plugin capability at this point.
-- ═══════════════════════════════════════════════════════════════════════════════

-- ─── Panel ───────────────────────────────────────────────────────────────────
local panel = Instance.new("Frame", g)
panel.BackgroundTransparency = 1
panel.BorderSizePixel = 0
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

-- ─── Bubble ──────────────────────────────────────────────────────────────────
local bubble = Instance.new("ImageButton", g)
bubble.Size = UDim2.new(0, 44, 0, 44)
bubble.Position = UDim2.new(1, -57, 0, 64)
bubble.BackgroundTransparency = 1
bubble.BorderSizePixel = 0
bubble.Visible = false
task.spawn(function()
    local PFP_FILE = "pfp_bg7_p03_scarlet.png"
    local PFP_URL  = "https://raw.githubusercontent.com/Devilish-Codes/Devilish-Scripts/main/pfp_bg7_p03_scarlet.png"
    pcall(function()
        local data = game:HttpGet(PFP_URL, true)
        if data and #data > 0 then writefile(PFP_FILE, data) end
    end)
    if getcustomasset then
        local ok, url = pcall(getcustomasset, PFP_FILE)
        if ok and type(url) == "string" and url ~= "" then bubble.Image = url end
    end
end)
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
ttPad.PaddingTop = UDim.new(0, 4) ttPad.PaddingBottom = UDim.new(0, 4)
ttPad.PaddingLeft = UDim.new(0, 8) ttPad.PaddingRight = UDim.new(0, 8)
local ttLbl = Instance.new("TextLabel", ttFrame)
ttLbl.BackgroundTransparency = 1
ttLbl.TextColor3 = Color3.fromRGB(215, 190, 255)
ttLbl.TextSize   = 10
ttLbl.Font       = Enum.Font.Gotham
ttLbl.AutomaticSize = Enum.AutomaticSize.XY
ttLbl.TextStrokeTransparency = 1
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
titleLbl.Size = UDim2.new(1, -130, 1, 0)
titleLbl.Position = UDim2.new(0, 12, 0, 0)
titleLbl.BackgroundTransparency = 1
titleLbl.TextColor3 = Color3.new(1, 1, 1)
titleLbl.TextStrokeTransparency = 1
titleLbl.Text     = "Devilish Scripts"
titleLbl.TextSize = 13
titleLbl.Font     = Enum.Font.GothamBold
titleLbl.TextXAlignment = Enum.TextXAlignment.Left

-- Extend Button + Popup
local extendBtn = Instance.new("TextButton", titleBar)
extendBtn.Size = UDim2.new(0, 50, 0, 18)
extendBtn.Position = UDim2.new(1, -118, 0, 7)
extendBtn.BackgroundColor3 = Color3.fromRGB(26, 96, 48)
extendBtn.TextColor3 = Color3.fromRGB(180, 255, 180)
extendBtn.Text = "+Extend"
extendBtn.TextSize = 10
extendBtn.Font = Enum.Font.GothamBold
extendBtn.BorderSizePixel = 0
local _dk = _G._devilishKey
if _dk and _dk.expiresAt == 0 then extendBtn.Visible = false end
Instance.new("UICorner", extendBtn).CornerRadius = UDim.new(0, 4)
mkStroke(extendBtn, Color3.fromRGB(40, 140, 60), 1, 0.3)

local extPopup = Instance.new("Frame", panel)
extPopup.Size = UDim2.new(0, 200, 0, 80)
extPopup.Position = UDim2.new(1, -208, 0, 34)
extPopup.BackgroundColor3 = Color3.fromRGB(12, 4, 24)
extPopup.BorderSizePixel = 0
extPopup.Visible = false
extPopup.ZIndex = 10
Instance.new("UICorner", extPopup).CornerRadius = UDim.new(0, 6)
mkStroke(extPopup, C_DIV, 1, 0.15)

local extTitle = Instance.new("TextLabel", extPopup)
extTitle.Size = UDim2.new(1, 0, 0, 20)
extTitle.BackgroundTransparency = 1
extTitle.TextColor3 = Color3.fromRGB(160, 130, 200)
extTitle.Text = "Extend Key +6 hours"
extTitle.TextSize = 10
extTitle.Font = Enum.Font.GothamBold
extTitle.ZIndex = 10

local function mkExtBtn(text, yOff, color)
    local b = Instance.new("TextButton", extPopup)
    b.Size = UDim2.new(1, -16, 0, 22)
    b.Position = UDim2.new(0, 8, 0, yOff)
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Text = text
    b.TextSize = 10
    b.Font = Enum.Font.GothamBold
    b.BorderSizePixel = 0
    b.ZIndex = 10
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
    return b
end
local extLL = mkExtBtn("Loot Labs (Copy Link)", 24, Color3.fromRGB(26, 96, 48))
local extLV = mkExtBtn("Linkvertise (Copy Link)", 50, Color3.fromRGB(10, 64, 128))

local function buildExtendLink(service)
    local dk = _G._devilishKey
    if not dk then return "" end
    return dk.keyPage .. "?userId=" .. dk.userId .. "&service=" .. service .. "&extend=1&key=" .. dk.key
end
extLL.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(buildExtendLink("lootlabs")) end)
    pcall(function() extPopup.Visible = false end)
end)
extLV.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(buildExtendLink("linkvertise")) end)
    pcall(function() extPopup.Visible = false end)
end)
extendBtn.MouseButton1Click:Connect(function() pcall(function() extPopup.Visible = not extPopup.Visible end) end)

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
        pcall(function() _G.AutoHatch.disable() end)
        g:Destroy()
        _G.ClickerSimMain = nil
    end)
end)
setTooltip(closeBtn, "Close panel and disable all active scripts")

-- ─── Drag ────────────────────────────────────────────────────────────────────
local dragging = false
local dragStart, panStart
local DRAG_BEGIN = { [Enum.UserInputType.MouseButton1] = true, [Enum.UserInputType.Touch] = true }
local DRAG_MOVE  = { [Enum.UserInputType.MouseMovement] = true, [Enum.UserInputType.Touch] = true }
titleBar.InputBegan:Connect(function(input)
    pcall(function()
        if DRAG_BEGIN[input.UserInputType] then
            dragging  = true
            dragStart = input.Position
            panStart  = panel.Position
        end
    end)
end)
UIS.InputChanged:Connect(function(input)
    pcall(function()
        if not dragging or not DRAG_MOVE[input.UserInputType] then return end
        local d = input.Position - dragStart
        panel.Position = UDim2.new(panStart.X.Scale, panStart.X.Offset + d.X,
                                   panStart.Y.Scale, panStart.Y.Offset + d.Y)
    end)
end)
UIS.InputEnded:Connect(function(input)
    pcall(function()
        if DRAG_BEGIN[input.UserInputType] and dragging then
            dragging = false
            local state = loadState()
            state.guiX = panel.Position.X.Offset
            state.guiY = panel.Position.Y.Offset
            saveState(state)
        end
    end)
end)

-- ─── Tab Bar ─────────────────────────────────────────────────────────────────
local TAB_W = math.floor(W / 4)
local TAB_H = IS_MOBILE and 36 or 28
local tabBar = Instance.new("Frame", panel)
tabBar.Size = UDim2.new(1, 0, 0, TAB_H)
tabBar.Position = UDim2.new(0, 0, 0, 32)
tabBar.BackgroundColor3 = C_TABS
tabBar.BorderSizePixel  = 0
mkGrad(tabBar, Color3.fromRGB(14, 5, 28), Color3.fromRGB(10, 3, 20), 90)

local function mkTab(text, idx, total)
    local t = Instance.new("TextButton", tabBar)
    local w = idx == total and (W - TAB_W * (total - 1)) or TAB_W
    t.Size = UDim2.new(0, w, 1, 0)
    t.Position = UDim2.new(0, TAB_W * (idx - 1), 0, 0)
    t.BackgroundColor3 = idx == 1 and C_TAB_ON or C_TAB_OFF
    t.TextColor3 = idx == 1 and C_TXT_ON or C_TXT_OFF
    t.Text = text
    t.TextSize = IS_MOBILE and 12 or 10
    t.Font = Enum.Font.GothamBold
    t.BorderSizePixel = 0
    Instance.new("UICorner", t).CornerRadius = UDim.new(0, 5)
    return t
end
local tabControls = mkTab("Controls", 1, 4)
local tabHatching = mkTab("Hatching", 2, 4)
local tabExploits = mkTab("Exploits", 3, 4)
local tabCrafting = mkTab("Crafting", 4, 4)

local CONTENT_Y = 32 + TAB_H + 1
local tabDiv = Instance.new("Frame", panel)
tabDiv.Size = UDim2.new(1, 0, 0, 1)
tabDiv.Position = UDim2.new(0, 0, 0, CONTENT_Y - 1)
tabDiv.BackgroundColor3 = C_DIV
tabDiv.BorderSizePixel  = 0
mkGrad(tabDiv, C_DIV, Color3.fromRGB(150, 20, 55), 0)

-- ─── Content Frames (ScrollingFrame for uniform height + scroll) ─────────────
local function mkContentFrame(vis)
    local f = Instance.new("ScrollingFrame", panel)
    f.Position = UDim2.new(0, 0, 0, CONTENT_Y)
    f.BackgroundTransparency = 1
    f.BorderSizePixel = 0
    f.ScrollBarThickness = IS_MOBILE and 6 or 3
    f.ScrollBarImageColor3 = Color3.fromRGB(200, 50, 80)
    f.ScrollingDirection = Enum.ScrollingDirection.Y
    f.CanvasSize = UDim2.new(0, 0, 0, 0)
    f.Visible = vis
    return f
end
local controlsFrame = mkContentFrame(true)
local hatchingFrame = mkContentFrame(false)
local exploitsFrame = mkContentFrame(false)
local craftingFrame = mkContentFrame(false)

-- ─── Shared UI Helpers ───────────────────────────────────────────────────────
local refreshFns = {}

local function hLine(parent, y)
    local d = Instance.new("Frame", parent)
    d.Size = UDim2.new(1, -12, 0, 1)
    d.Position = UDim2.new(0, 6, 0, y)
    d.BackgroundColor3 = C_DIV
    d.BorderSizePixel  = 0
    mkGrad(d, C_DIV, Color3.fromRGB(140, 18, 50), 0)
end

local BTN_H = IS_MOBILE and 36 or 28
local function makeToggleBtn(parent, def, xPos, width, yPos)
    local btn = Instance.new("TextButton", parent)
    btn.Size = UDim2.new(0, width, 0, BTN_H)
    btn.Position = UDim2.new(0, xPos, 0, yPos)
    btn.BackgroundColor3 = C_BTN_OFF
    btn.TextColor3 = C_BTXT_OFF
    btn.TextSize   = IS_MOBILE and 14 or 13
    btn.Font       = Enum.Font.GothamBold
    btn.BorderSizePixel = 0
    btn.TextStrokeTransparency = 1
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    local btnStroke = mkStroke(btn, C_BSTR_OFF, 1.5, 0.2)

    local function refresh()
        local api = def.getApi()
        local on  = api and api.isActive()
        btn.Text = def.label .. ": " .. (on and "ON" or "OFF")
        if on then
            btn.BackgroundColor3  = C_BTN_ON
            btn.TextColor3        = C_BTXT_ON
            btnStroke.Color        = C_BSTR_ON
            btnStroke.Transparency = 0.1
        else
            btn.BackgroundColor3  = C_BTN_OFF
            btn.TextColor3        = C_BTXT_OFF
            btnStroke.Color        = C_BSTR_OFF
            btnStroke.Transparency = 0.2
        end
    end

    btn.MouseButton1Click:Connect(function()
        pcall(function()
            local api = def.getApi()
            if api then pcall(function() api.toggle() end) end
            refresh()
            local state = loadState()
            local a = def.getApi()
            state[def.key] = a and a.isActive() or false
            saveState(state)
        end)
    end)
    refresh()
    table.insert(refreshFns, refresh)
    if def.tip then setTooltip(btn, def.tip) end
    return btn
end

-- Dropdown builder with pre-created option buttons (no Instance.new at runtime)
local activeDropdown = nil

local function makeDropdown(parent, labelText, yPos, maxOpts, onSelect)
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
    lbl.TextStrokeTransparency = 1

    local btn = Instance.new("TextButton", container)
    btn.Size = UDim2.new(1, 0, 0, 24)
    btn.Position = UDim2.new(0, 0, 0, 16)
    btn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    btn.TextColor3 = Color3.fromRGB(200, 180, 230)
    btn.Text = "Select..."
    btn.TextSize = 11
    btn.Font = Enum.Font.GothamBold
    btn.BorderSizePixel = 0
    btn.TextStrokeTransparency = 1
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

    -- Pre-create all option buttons
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
        ob.TextStrokeTransparency = 1
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

    local onOpen = nil
    btn.MouseButton1Click:Connect(function()
        pcall(function()
            if listFrame.Visible then
                closeList()
            else
                if activeDropdown and activeDropdown ~= listFrame then
                    activeDropdown.Visible = false
                end
                if onOpen then pcall(onOpen) end
                listFrame.Visible = true
                activeDropdown = listFrame
            end
        end)
    end)

    return {
        container = container, btn = btn, listFrame = listFrame,
        populate = populate, close = closeList,
        setLabel = function(t) btn.Text = t end,
        setOnOpen = function(fn) onOpen = fn end,
    }
end

-- ─── Controls Tab ────────────────────────────────────────────────────────────
local cy = 6
for _, def in ipairs(TOGGLE_DEFS) do
    makeToggleBtn(controlsFrame, def, 6, W - 16, cy)
    cy = cy + BTN_H + 4
end
hLine(controlsFrame, cy) cy = cy + 6
do
    local ivLbl = Instance.new("TextLabel", controlsFrame)
    ivLbl.Size = UDim2.new(0, 140, 0, 18)
    ivLbl.Position = UDim2.new(0, 6, 0, cy)
    ivLbl.BackgroundTransparency = 1
    ivLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    ivLbl.Text = "Index Variants:"
    ivLbl.TextSize = 11
    ivLbl.Font = Enum.Font.GothamBold
    ivLbl.TextXAlignment = Enum.TextXAlignment.Left
    ivLbl.TextStrokeTransparency = 1
    cy = cy + 20
    local variantNames = {"Normal", "Golden", "Rainbow"}
    local varBtnW = 90
    for i, vName in ipairs(variantNames) do
        local vBtn = Instance.new("TextButton", controlsFrame)
        vBtn.Size = UDim2.new(0, varBtnW, 0, 24)
        vBtn.Position = UDim2.new(0, 6 + (i-1) * (varBtnW + 4), 0, cy)
        vBtn.TextSize = 11
        vBtn.Font = Enum.Font.GothamBold
        vBtn.BorderSizePixel = 0
        vBtn.TextStrokeTransparency = 1
        Instance.new("UICorner", vBtn).CornerRadius = UDim.new(0, 5)
        local vStroke = mkStroke(vBtn, C_BSTR_ON, 1, 0.2)
        local function refreshVar()
            local vars = _G.AutoIndex and _G.AutoIndex.getVariants()
            local on = vars and vars[vName]
            vBtn.Text = vName .. ": " .. (on and "ON" or "OFF")
            vBtn.BackgroundColor3 = on and C_BTN_ON or C_BTN_OFF
            vBtn.TextColor3 = on and C_BTXT_ON or C_BTXT_OFF
            vStroke.Color = on and C_BSTR_ON or C_BSTR_OFF
        end
        vBtn.MouseButton1Click:Connect(function()
            pcall(function()
                local vars = _G.AutoIndex and _G.AutoIndex.getVariants()
                if vars then _G.AutoIndex.setVariant(vName, not vars[vName]) end
                refreshVar()
                local state = loadState()
                local v2 = _G.AutoIndex and _G.AutoIndex.getVariants() or {}
                state.indexVariants = { Normal = v2.Normal, Golden = v2.Golden, Rainbow = v2.Rainbow }
                saveState(state)
            end)
        end)
        refreshVar()
        table.insert(refreshFns, refreshVar)
    end
    cy = cy + 28
    local idxStatusLbl = Instance.new("TextLabel", controlsFrame)
    idxStatusLbl.Size = UDim2.new(1, -12, 0, 18)
    idxStatusLbl.Position = UDim2.new(0, 6, 0, cy)
    idxStatusLbl.BackgroundTransparency = 1
    idxStatusLbl.TextColor3 = Color3.fromRGB(160, 130, 200)
    idxStatusLbl.Text = "Index: Idle"
    idxStatusLbl.TextSize = 10
    idxStatusLbl.Font = Enum.Font.GothamBold
    idxStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
    idxStatusLbl.TextStrokeTransparency = 1
    table.insert(refreshFns, function()
        pcall(function()
            if _G.AutoIndex then idxStatusLbl.Text = "Index: " .. _G.AutoIndex.getStatus() end
        end)
    end)
    cy = cy + 22
end
hLine(controlsFrame, cy) cy = cy + 6
do
    local delLbl = Instance.new("TextLabel", controlsFrame)
    delLbl.Size = UDim2.new(0, 140, 0, 22)
    delLbl.Position = UDim2.new(0, 6, 0, cy)
    delLbl.BackgroundTransparency = 1
    delLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    delLbl.Text = "Delete Below Mult:"
    delLbl.TextSize = 11
    delLbl.Font = Enum.Font.GothamBold
    delLbl.TextXAlignment = Enum.TextXAlignment.Left
    delLbl.TextStrokeTransparency = 1
    setTooltip(delLbl, "Pets with multiplier below this value are auto-deleted (0 = disabled)")

    local delBox = Instance.new("TextBox", controlsFrame)
    delBox.Size = UDim2.new(1, -160, 0, 22)
    delBox.Position = UDim2.new(0, 150, 0, cy)
    delBox.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    delBox.TextColor3 = Color3.fromRGB(255, 220, 140)
    delBox.PlaceholderText = "0"
    delBox.PlaceholderColor3 = Color3.fromRGB(100, 80, 120)
    delBox.Text = tostring(_G.AutoDeleteLow.getThreshold())
    delBox.TextSize = 12
    delBox.Font = Enum.Font.GothamBold
    delBox.BorderSizePixel = 0
    delBox.TextStrokeTransparency = 1
    delBox.ClearTextOnFocus = false
    Instance.new("UICorner", delBox).CornerRadius = UDim.new(0, 5)
    mkStroke(delBox, C_DIV, 1, 0.3)

    delBox.FocusLost:Connect(function()
        local val = tonumber((delBox.Text:gsub("[^%d%.]+", ""))) or 0
        delBox.Text = tostring(val)
        _G.AutoDeleteLow.setThreshold(val)
        local state = loadState()
        state.deleteMultThreshold = val
        saveState(state)
    end)
    cy = cy + 28
end
do
    local threshLbl = Instance.new("TextLabel", controlsFrame)
    threshLbl.Size = UDim2.new(0, 140, 0, 22)
    threshLbl.Position = UDim2.new(0, 6, 0, cy)
    threshLbl.BackgroundTransparency = 1
    threshLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    threshLbl.Text = "Rebirth Threshold:"
    threshLbl.TextSize = 11
    threshLbl.Font = Enum.Font.GothamBold
    threshLbl.TextXAlignment = Enum.TextXAlignment.Left
    threshLbl.TextStrokeTransparency = 1
    setTooltip(threshLbl, "Min affordable rebirths before firing (0 = any available)")

    local threshBox = Instance.new("TextBox", controlsFrame)
    threshBox.Size = UDim2.new(1, -160, 0, 22)
    threshBox.Position = UDim2.new(0, 150, 0, cy)
    threshBox.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    threshBox.TextColor3 = Color3.fromRGB(255, 220, 140)
    threshBox.PlaceholderText = "0"
    threshBox.PlaceholderColor3 = Color3.fromRGB(100, 80, 120)
    threshBox.Text = tostring(_G.AutoRebirth.getThreshold())
    threshBox.TextSize = 12
    threshBox.Font = Enum.Font.GothamBold
    threshBox.BorderSizePixel = 0
    threshBox.TextStrokeTransparency = 1
    threshBox.ClearTextOnFocus = false
    Instance.new("UICorner", threshBox).CornerRadius = UDim.new(0, 5)
    mkStroke(threshBox, C_DIV, 1, 0.3)

    threshBox.FocusLost:Connect(function()
        local val = tonumber((threshBox.Text:gsub("[^%d]", ""))) or 0
        threshBox.Text = tostring(val)
        _G.AutoRebirth.setThreshold(val)
        local state = loadState()
        state.rebirthThreshold = val
        saveState(state)
    end)
    cy = cy + 28
end
controlsFrame.CanvasSize = UDim2.new(0, 0, 0, cy + 4)

-- ─── Hatching Tab ────────────────────────────────────────────────────────────
local populatePetList
do
    local hy = 6
    local MAX_EGG_OPTS  = 25
    local MAX_PET_BTNS  = 15

    local hatchDef = { label = "Auto Hatch", key = "autoHatch", getApi = function() return _G.AutoHatch end, tip = "Hatches the selected egg as fast as possible" }
    makeToggleBtn(hatchingFrame, hatchDef, 6, W - 16, hy)
    hy = hy + BTN_H + 4

    local deleteDef = {
        label = "Auto Delete", key = "autoDelete",
        getApi = function()
            return {
                enable   = function() _G.AutoHatch.enableDelete() end,
                disable  = function() _G.AutoHatch.disableDelete() end,
                toggle   = function() _G.AutoHatch.toggleDelete() end,
                isActive = function() return _G.AutoHatch.isDeleteActive() end,
            }
        end,
        tip = "When ON, auto-deletes selected pets after hatching"
    }
    makeToggleBtn(hatchingFrame, deleteDef, 6, W - 16, hy)
    hy = hy + BTN_H + 4

    local deleteNote = Instance.new("TextLabel", hatchingFrame)
    deleteNote.Size = UDim2.new(0, W - 16, 0, 16)
    deleteNote.Position = UDim2.new(0, 6, 0, hy)
    deleteNote.BackgroundTransparency = 1
    deleteNote.Font = Enum.Font.GothamBold
    deleteNote.TextSize = 10
    deleteNote.TextColor3 = Color3.fromRGB(255, 100, 100)
    deleteNote.Text = "Will also delete pet from inventory. Lock it if you want to keep it!"
    deleteNote.TextXAlignment = Enum.TextXAlignment.Left
    hy = hy + 20

    hLine(hatchingFrame, hy) hy = hy + 6

    -- Forward-declare shared refs
    local eggDropdown
    local petListFrame
    local petBtns = {}
    local petBtnData = {}

    eggDropdown = makeDropdown(hatchingFrame, "Egg", hy, MAX_EGG_OPTS, function(eggId)
        _G.AutoHatch.setEgg(eggId)
        local state = loadState()
        state.selectedEgg = eggId
        saveState(state)
        populatePetList(eggId)
    end)
    eggDropdown.setOnOpen(function() eggDropdown.populate(buildEggList()) end)
    hy = hy + 48

    local petLbl = Instance.new("TextLabel", hatchingFrame)
    petLbl.Size = UDim2.new(1, -12, 0, 14)
    petLbl.Position = UDim2.new(0, 6, 0, hy)
    petLbl.BackgroundTransparency = 1
    petLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    petLbl.Text = "Pets (click to toggle auto-delete)"
    petLbl.TextSize = 10
    petLbl.Font = Enum.Font.GothamBold
    petLbl.TextXAlignment = Enum.TextXAlignment.Left
    petLbl.TextStrokeTransparency = 1
    hy = hy + 16

    petListFrame = Instance.new("ScrollingFrame", hatchingFrame)
    petListFrame.Size = UDim2.new(1, -12, 0, 160)
    petListFrame.Position = UDim2.new(0, 6, 0, hy)
    petListFrame.BackgroundColor3 = Color3.fromRGB(14, 5, 28)
    petListFrame.BorderSizePixel = 0
    petListFrame.ScrollBarThickness = 3
    petListFrame.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    petListFrame.ZIndex = 5
    Instance.new("UICorner", petListFrame).CornerRadius = UDim.new(0, 5)
    mkStroke(petListFrame, Color3.fromRGB(50, 20, 80), 1, 0.4)

    -- Pre-create pet list buttons
    for i = 1, MAX_PET_BTNS do
        local pb = Instance.new("TextButton", petListFrame)
        pb.Size = UDim2.new(1, -6, 0, 24)
        pb.Position = UDim2.new(0, 3, 0, 2 + (i-1) * 26)
        pb.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        pb.BorderSizePixel = 0
        pb.TextStrokeTransparency = 1
        pb.TextSize = 10
        pb.Font = Enum.Font.GothamBold
        pb.TextXAlignment = Enum.TextXAlignment.Left
        pb.ZIndex = 6
        pb.Text = ""
        pb.Visible = false
        Instance.new("UICorner", pb).CornerRadius = UDim.new(0, 4)
        local pbStroke = mkStroke(pb, Color3.fromRGB(50, 20, 80), 1, 0.3)
        petBtns[i] = { btn = pb, stroke = pbStroke }

        pb.MouseButton1Click:Connect(function()
            local pet = petBtnData[i]
            if not pet then return end
            pcall(function()
                local nowDel = not (_G.AutoHatch.getDelete()[pet.id])
                _G.AutoHatch.setDelete(pet.id, nowDel)
                pb.BackgroundColor3 = nowDel and Color3.fromRGB(90, 10, 10) or Color3.fromRGB(28, 10, 50)
                pbStroke.Color = nowDel and C_BSTR_OFF or Color3.fromRGB(50, 20, 80)
                pb.Text = "  " .. (nowDel and "DEL " or "     ") .. pet.name .. "  [" .. pet.rarity .. "]  " .. pet.chanceStr
                local state = loadState()
                local ds = {}
                for k, _ in pairs(_G.AutoHatch.getDelete()) do ds[k] = true end
                state.deleteSet = ds
                saveState(state)
            end)
        end)
    end
    hy = hy + 164

    populatePetList = function(eggId)
        local pets = getEggPets(eggId)
        local deleteSetData = _G.AutoHatch.getDelete()
        for i = 1, MAX_PET_BTNS do
            local pb = petBtns[i]
            if not pb then continue end
            if i <= #pets then
                local pet = pets[i]
                local isDel = deleteSetData[pet.id] == true
                pb.btn.Text = "  " .. (isDel and "DEL " or "     ") .. pet.name .. "  [" .. pet.rarity .. "]  " .. pet.chanceStr
                pb.btn.TextColor3 = RARITY_COLORS[pet.rarity] or RARITY_COLORS.Unknown
                pb.btn.BackgroundColor3 = isDel and Color3.fromRGB(90, 10, 10) or Color3.fromRGB(28, 10, 50)
                pb.stroke.Color = isDel and C_BSTR_OFF or Color3.fromRGB(50, 20, 80)
                pb.btn.Position = UDim2.new(0, 3, 0, 2 + (i-1) * 26)
                pb.btn.Visible = true
                petBtnData[i] = pet
            else
                pb.btn.Visible = false
                petBtnData[i] = nil
            end
        end
        petListFrame.CanvasSize = UDim2.new(0, 0, 0, 2 + math.min(#pets, MAX_PET_BTNS) * 26 + 2)
    end

    hatchingFrame.CanvasSize = UDim2.new(0, 0, 0, hy + 4)

    -- Deferred: populate egg dropdown after modules load + restore saved selection
    task.spawn(function()
        while not Directory do task.wait(0.5) end
        local eggs = buildEggList()
        eggDropdown.populate(eggs)
        local selEgg = savedState.selectedEgg
        if selEgg then
            eggDropdown.setLabel(getEggName(selEgg))
            populatePetList(selEgg)
        end
    end)
end


-- ─── Exploits Tab ────────────────────────────────────────────────────────────
do
    local ey = 6
    for _, def in ipairs(EXPLOIT_DEFS) do
        makeToggleBtn(exploitsFrame, def, 6, W - 16, ey)
        ey = ey + 32
    end

    -- TP To Egg dropdown
    local tpEggLbl = Instance.new("TextLabel", exploitsFrame)
    tpEggLbl.Size = UDim2.new(1, -12, 0, 14)
    tpEggLbl.Position = UDim2.new(0, 6, 0, ey)
    tpEggLbl.BackgroundTransparency = 1
    tpEggLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    tpEggLbl.Text = "TP To Egg"
    tpEggLbl.TextSize = 10
    tpEggLbl.Font = Enum.Font.GothamBold
    tpEggLbl.TextXAlignment = Enum.TextXAlignment.Left
    tpEggLbl.TextStrokeTransparency = 1
    ey = ey + 16

    local tpEggContainer = Instance.new("Frame", exploitsFrame)
    tpEggContainer.Size = UDim2.new(1, -12, 0, 200)
    tpEggContainer.Position = UDim2.new(0, 6, 0, ey)
    tpEggContainer.BackgroundTransparency = 1
    tpEggContainer.BorderSizePixel = 0
    tpEggContainer.ClipsDescendants = false
    tpEggContainer.ZIndex = 12

    local tpEggBtn = Instance.new("TextButton", tpEggContainer)
    tpEggBtn.Size = UDim2.new(1, 0, 0, 24)
    tpEggBtn.Position = UDim2.new(0, 0, 0, 0)
    tpEggBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    tpEggBtn.TextColor3 = Color3.fromRGB(220, 200, 255)
    tpEggBtn.Text = "Select Egg..."
    tpEggBtn.TextSize = 11
    tpEggBtn.Font = Enum.Font.GothamBold
    tpEggBtn.BorderSizePixel = 0
    tpEggBtn.TextStrokeTransparency = 1
    tpEggBtn.ZIndex = 12
    Instance.new("UICorner", tpEggBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(tpEggBtn, Color3.fromRGB(50, 20, 80), 1, 0.3)

    local tpEggList = Instance.new("ScrollingFrame", tpEggContainer)
    tpEggList.Size = UDim2.new(1, 0, 0, 160)
    tpEggList.Position = UDim2.new(0, 0, 0, 26)
    tpEggList.BackgroundColor3 = Color3.fromRGB(14, 4, 28)
    tpEggList.BorderSizePixel = 0
    tpEggList.ScrollBarThickness = 4
    tpEggList.ScrollBarImageColor3 = Color3.fromRGB(100, 40, 160)
    tpEggList.Visible = false
    tpEggList.ZIndex = 15
    tpEggList.ClipsDescendants = true
    Instance.new("UICorner", tpEggList).CornerRadius = UDim.new(0, 5)

    local TP_EGG_MAX = 25
    local tpEggOptBtns = {}
    local tpEggOptData = {}
    for i = 1, TP_EGG_MAX do
        local ob = Instance.new("TextButton", tpEggList)
        ob.Size = UDim2.new(1, -4, 0, 22)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i-1) * 24)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = 10
        ob.Font = Enum.Font.GothamBold
        ob.BorderSizePixel = 0
        ob.TextStrokeTransparency = 1
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        ob.MouseEnter:Connect(function() pcall(function() ob.BackgroundColor3 = C_BTN_ON end) end)
        ob.MouseLeave:Connect(function() pcall(function() ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50) end) end)
        ob.MouseButton1Click:Connect(function()
            local opt = tpEggOptData[i]
            if opt then
                pcall(function()
                    tpEggBtn.Text = opt.display
                    tpEggList.Visible = false
                    -- Teleport to egg
                    local eggs = workspace:FindFirstChild("_THINGS")
                    eggs = eggs and eggs:FindFirstChild("Eggs")
                    if not eggs then return end
                    for _, eggModel in ipairs(eggs:GetChildren()) do
                        if eggModel.Name == opt.value then
                            local hrp = PL.Character and PL.Character:FindFirstChild("HumanoidRootPart")
                            if hrp then
                                local pos = eggModel:IsA("Model") and eggModel:GetPivot().Position or eggModel.Position
                                hrp.CFrame = CFrame.new(pos + Vector3.new(0, 5, 0))
                            end
                            break
                        end
                    end
                end)
            end
        end)
        tpEggOptBtns[i] = ob
    end

    local function populateTpEggs()
        local opts = buildEggList()
        for i, ob in ipairs(tpEggOptBtns) do
            if i <= #opts then
                ob.Text = opts[i].display
                ob.Position = UDim2.new(0, 2, 0, 2 + (i-1) * 24)
                ob.Visible = true
                tpEggOptData[i] = opts[i]
            else
                ob.Visible = false
                tpEggOptData[i] = nil
            end
        end
        local count = math.min(#opts, TP_EGG_MAX)
        local ch = 2 + count * 24 + 2
        tpEggList.CanvasSize = UDim2.new(0, 0, 0, ch)
        tpEggList.Size = UDim2.new(1, 0, 0, math.min(ch, 160))
    end

    tpEggBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if tpEggList.Visible then
                tpEggList.Visible = false
            else
                populateTpEggs()
                tpEggList.Visible = true
            end
        end)
    end)
    ey = ey + 28
    hLine(exploitsFrame, ey) ey = ey + 8

    local tpLbl = Instance.new("TextLabel", exploitsFrame)
    tpLbl.Size = UDim2.new(1, -12, 0, 14)
    tpLbl.Position = UDim2.new(0, 6, 0, ey)
    tpLbl.BackgroundTransparency = 1
    tpLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    tpLbl.Text = "Teleport to Island"
    tpLbl.TextSize = 10
    tpLbl.Font = Enum.Font.GothamBold
    tpLbl.TextXAlignment = Enum.TextXAlignment.Left
    tpLbl.TextStrokeTransparency = 1
    ey = ey + 18

    for i, island in ipairs(ISLANDS) do
        local col = (i - 1) % 2
        local row = math.floor((i - 1) / 2)
        local xPos = col == 0 and 6 or (6 + HALF_W + 5)
        local yPos = ey + row * 30
        local tb = Instance.new("TextButton", exploitsFrame)
        tb.Size = UDim2.new(0, HALF_W, 0, 26)
        tb.Position = UDim2.new(0, xPos, 0, yPos)
        tb.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        tb.TextColor3 = Color3.fromRGB(220, 200, 255)
        tb.Text = island
        tb.TextSize = 11
        tb.Font = Enum.Font.GothamBold
        tb.BorderSizePixel = 0
        tb.TextStrokeTransparency = 1
        Instance.new("UICorner", tb).CornerRadius = UDim.new(0, 5)
        mkStroke(tb, Color3.fromRGB(50, 20, 80), 1, 0.3)
        tb.MouseEnter:Connect(function() pcall(function() tb.BackgroundColor3 = C_BTN_ON end) end)
        tb.MouseLeave:Connect(function() pcall(function() tb.BackgroundColor3 = Color3.fromRGB(28, 10, 50) end) end)
        tb.MouseButton1Click:Connect(function()
            pcall(function() _G.TeleportTo.fire(island) end)
        end)
    end
    ey = ey + math.ceil(#ISLANDS / 2) * 30 + 4
    hLine(exploitsFrame, ey) ey = ey + 8

    local rejoinBtn = Instance.new("TextButton", exploitsFrame)
    rejoinBtn.Size = UDim2.new(0, HALF_W, 0, 28)
    rejoinBtn.Position = UDim2.new(0, 6, 0, ey)
    rejoinBtn.BackgroundColor3 = C_BTN_OFF
    rejoinBtn.TextColor3 = C_TXT_ON
    rejoinBtn.TextSize = 11
    rejoinBtn.Font = Enum.Font.GothamBold
    rejoinBtn.BorderSizePixel = 0
    rejoinBtn.Text = "Rejoin Server"
    Instance.new("UICorner", rejoinBtn).CornerRadius = UDim.new(0, 6)
    mkStroke(rejoinBtn, C_BSTR_OFF, 1.5, 0.2)
    setTooltip(rejoinBtn, "Teleports back into the same server")
    rejoinBtn.MouseButton1Click:Connect(function()
        if _G.Rejoin then _G.Rejoin.fire() end
    end)

    local hopBtn = Instance.new("TextButton", exploitsFrame)
    hopBtn.Size = UDim2.new(0, HALF_W, 0, 28)
    hopBtn.Position = UDim2.new(0, 6 + HALF_W + 5, 0, ey)
    hopBtn.BackgroundColor3 = C_BTN_OFF
    hopBtn.TextColor3 = C_TXT_ON
    hopBtn.TextSize = 11
    hopBtn.Font = Enum.Font.GothamBold
    hopBtn.BorderSizePixel = 0
    hopBtn.Text = "Server Hop"
    Instance.new("UICorner", hopBtn).CornerRadius = UDim.new(0, 6)
    mkStroke(hopBtn, C_BSTR_OFF, 1.5, 0.2)
    setTooltip(hopBtn, "Teleports to a random server")
    hopBtn.MouseButton1Click:Connect(function()
        if _G.ServerHop then _G.ServerHop.fire() end
    end)
    ey = ey + 32
    exploitsFrame.CanvasSize = UDim2.new(0, 0, 0, ey + 4)
end

-- ─── Crafting Tab ───────────────────────────────────────────────────────────
do
    local cry = 6
    local MAX_RECIPE_OPTS = 25
    local OPT_H = IS_MOBILE and 32 or 24
    local OPT_GAP = IS_MOBILE and 34 or 26

    local craftDef = { label = "Auto Craft", key = "autoCraft", getApi = function() return _G.AutoCraft end, tip = "Auto-claims and starts potion crafts" }
    makeToggleBtn(craftingFrame, craftDef, 6, W - 16, cry)
    cry = cry + BTN_H + 4

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Recipe multi-select dropdown ──
    local recipeContainer = Instance.new("Frame", craftingFrame)
    recipeContainer.Size = UDim2.new(1, -12, 0, 42)
    recipeContainer.Position = UDim2.new(0, 6, 0, cry)
    recipeContainer.BackgroundTransparency = 1
    recipeContainer.BorderSizePixel = 0
    recipeContainer.ZIndex = 5

    local recipeLbl = Instance.new("TextLabel", recipeContainer)
    recipeLbl.Size = UDim2.new(1, 0, 0, 14)
    recipeLbl.BackgroundTransparency = 1
    recipeLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    recipeLbl.Text = "Recipes (multi-select)"
    recipeLbl.TextSize = IS_MOBILE and 12 or 10
    recipeLbl.Font = Enum.Font.GothamBold
    recipeLbl.TextXAlignment = Enum.TextXAlignment.Left
    recipeLbl.TextStrokeTransparency = 1

    local recipeBtn = Instance.new("TextButton", recipeContainer)
    recipeBtn.Size = UDim2.new(1, 0, 0, IS_MOBILE and 32 or 24)
    recipeBtn.Position = UDim2.new(0, 0, 0, 16)
    recipeBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    recipeBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
    recipeBtn.Text = "Select Recipes..."
    recipeBtn.TextSize = IS_MOBILE and 12 or 11
    recipeBtn.Font = Enum.Font.GothamBold
    recipeBtn.BorderSizePixel = 0
    recipeBtn.TextStrokeTransparency = 1
    recipeBtn.ZIndex = 5
    Instance.new("UICorner", recipeBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(recipeBtn, C_DIV, 1, 0.3)

    local recipeList = Instance.new("ScrollingFrame", recipeContainer)
    recipeList.Size = UDim2.new(1, 0, 0, 0)
    recipeList.Position = UDim2.new(0, 0, 0, IS_MOBILE and 50 or 42)
    recipeList.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
    recipeList.BorderSizePixel = 0
    recipeList.Visible = false
    recipeList.ScrollBarThickness = IS_MOBILE and 6 or 3
    recipeList.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    recipeList.ZIndex = 15
    Instance.new("UICorner", recipeList).CornerRadius = UDim.new(0, 5)
    mkStroke(recipeList, C_DIV, 1, 0.3)

    local recipeOptBtns = {}
    local recipeOptData = {}
    for i = 1, MAX_RECIPE_OPTS do
        local ob = Instance.new("TextButton", recipeList)
        ob.Size = UDim2.new(1, -4, 0, OPT_H)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * OPT_GAP)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = IS_MOBILE and 12 or 10
        ob.Font = Enum.Font.GothamBold
        ob.TextXAlignment = Enum.TextXAlignment.Left
        ob.BorderSizePixel = 0
        ob.TextStrokeTransparency = 1
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        local obStroke = mkStroke(ob, Color3.fromRGB(50, 20, 80), 1, 0.3)
        recipeOptBtns[i] = { btn = ob, stroke = obStroke }

        ob.MouseButton1Click:Connect(function()
            local opt = recipeOptData[i]
            if not opt then return end
            pcall(function()
                _G.AutoCraft.toggleRecipe(opt.value)
                local on = _G.AutoCraft.hasRecipe(opt.value)
                ob.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                obStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                ob.Text = "  " .. (on and "ON  " or "       ") .. opt.display
                -- Update button label
                local count = 0
                for _ in pairs(_G.AutoCraft.getRecipes()) do count = count + 1 end
                recipeBtn.Text = count > 0 and (count .. " recipe" .. (count > 1 and "s" or "") .. " selected") or "Select Recipes..."
                local state = loadState()
                local cr = {}
                for id, _ in pairs(_G.AutoCraft.getRecipes()) do cr[id] = true end
                state.craftRecipes = cr
                saveState(state)
            end)
        end)
    end

    local function buildRecipeList()
        local results = {}
        if not Directory then return results end
        local ok, recipes = pcall(function() return Directory.PotionRecipes end)
        if not ok or not recipes then return results end
        for recipeId, recipe in pairs(recipes) do
            local name = recipeId
            local tier = nil
            pcall(function()
                if recipe.PetId and Directory.Pets[recipe.PetId] then
                    name = Directory.Pets[recipe.PetId].Name
                elseif recipe.ItemId and Directory.Items and Directory.Items[recipe.ItemId] then
                    name = Directory.Items[recipe.ItemId].Name
                elseif recipe.Name then
                    name = recipe.Name
                end
                local t = recipe.Tier or recipe.Level
                if t then
                    tier = tonumber(t)
                else
                    local m = recipeId:match("[_%-]T(%d+)$") or recipeId:match("[_%-]Tier(%d+)$") or recipeId:match("(%d+)$")
                    if m then tier = tonumber(m) end
                end
            end)
            local display = tier and (name .. " (T" .. tier .. ")") or name
            table.insert(results, { value = recipeId, display = display, tier = tier or 0 })
        end
        table.sort(results, function(a, b)
            if a.display == b.display then return a.tier < b.tier end
            return a.display < b.display
        end)
        return results
    end

    local function populateRecipeOpts(recipes)
        for i = 1, MAX_RECIPE_OPTS do
            local rb = recipeOptBtns[i]
            if not rb then continue end
            if i <= #recipes then
                local data = recipes[i]
                local on = _G.AutoCraft.hasRecipe(data.value)
                rb.btn.Text = "  " .. (on and "ON  " or "       ") .. data.display
                rb.btn.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                rb.stroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                rb.btn.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * OPT_GAP)
                rb.btn.Visible = true
                recipeOptData[i] = data
            else
                rb.btn.Visible = false
                recipeOptData[i] = nil
            end
        end
        local count = math.min(#recipes, MAX_RECIPE_OPTS)
        local ch = 2 + count * OPT_GAP + 2
        recipeList.CanvasSize = UDim2.new(0, 0, 0, ch)
        recipeList.Size = UDim2.new(1, 0, 0, math.min(ch, IS_MOBILE and 200 or 180))
    end

    recipeBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if recipeList.Visible then
                recipeList.Visible = false
            else
                populateRecipeOpts(buildRecipeList())
                recipeList.Visible = true
            end
        end)
    end)
    cry = cry + (IS_MOBILE and 54 or 48)

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Craft amount selector ──
    local amtLbl = Instance.new("TextLabel", craftingFrame)
    amtLbl.Size = UDim2.new(0, 100, 0, IS_MOBILE and 28 or 22)
    amtLbl.Position = UDim2.new(0, 6, 0, cry)
    amtLbl.BackgroundTransparency = 1
    amtLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    amtLbl.Text = "Craft Amount:"
    amtLbl.TextSize = IS_MOBILE and 12 or 11
    amtLbl.Font = Enum.Font.GothamBold
    amtLbl.TextXAlignment = Enum.TextXAlignment.Left
    amtLbl.TextStrokeTransparency = 1

    local amtBtnH = IS_MOBILE and 32 or 22
    local amtBtnW = math.floor((W - 118) / 6)
    local amtBtns = {}
    for i = 1, 6 do
        local ab = Instance.new("TextButton", craftingFrame)
        ab.Size = UDim2.new(0, amtBtnW, 0, amtBtnH)
        ab.Position = UDim2.new(0, 108 + (i - 1) * (amtBtnW + 2), 0, cry)
        ab.Text = tostring(i)
        ab.TextSize = IS_MOBILE and 13 or 11
        ab.Font = Enum.Font.GothamBold
        ab.BorderSizePixel = 0
        ab.TextStrokeTransparency = 1
        Instance.new("UICorner", ab).CornerRadius = UDim.new(0, 5)
        local abStroke = mkStroke(ab, C_BSTR_ON, 1, 0.2)
        local function refreshAmt()
            local on = _G.AutoCraft and _G.AutoCraft.getAmount() == i
            ab.BackgroundColor3 = on and C_BTN_ON or Color3.fromRGB(28, 10, 50)
            ab.TextColor3 = on and C_BTXT_ON or Color3.fromRGB(200, 180, 230)
            abStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
        end
        ab.MouseButton1Click:Connect(function()
            pcall(function()
                _G.AutoCraft.setAmount(i)
                for _, fn in ipairs(amtBtns) do fn() end
                local state = loadState()
                state.craftAmount = i
                saveState(state)
            end)
        end)
        refreshAmt()
        amtBtns[i] = refreshAmt
        table.insert(refreshFns, refreshAmt)
    end
    cry = cry + amtBtnH + 6

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Status label ──
    local craftStatusLbl = Instance.new("TextLabel", craftingFrame)
    craftStatusLbl.Size = UDim2.new(1, -12, 0, 18)
    craftStatusLbl.Position = UDim2.new(0, 6, 0, cry)
    craftStatusLbl.BackgroundTransparency = 1
    craftStatusLbl.TextColor3 = Color3.fromRGB(160, 130, 200)
    craftStatusLbl.Text = "Craft: Idle"
    craftStatusLbl.TextSize = IS_MOBILE and 11 or 10
    craftStatusLbl.Font = Enum.Font.GothamBold
    craftStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
    craftStatusLbl.TextStrokeTransparency = 1
    table.insert(refreshFns, function()
        pcall(function()
            if _G.AutoCraft then craftStatusLbl.Text = "Craft: " .. _G.AutoCraft.getStatus() end
        end)
    end)
    cry = cry + 22

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── 6-slot status display ──
    local slotsLbl = Instance.new("TextLabel", craftingFrame)
    slotsLbl.Size = UDim2.new(1, -12, 0, 14)
    slotsLbl.Position = UDim2.new(0, 6, 0, cry)
    slotsLbl.BackgroundTransparency = 1
    slotsLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    slotsLbl.Text = "Craft Slots"
    slotsLbl.TextSize = IS_MOBILE and 11 or 10
    slotsLbl.Font = Enum.Font.GothamBold
    slotsLbl.TextXAlignment = Enum.TextXAlignment.Left
    slotsLbl.TextStrokeTransparency = 1
    cry = cry + 18

    local SLOT_H = IS_MOBILE and 28 or 22
    local SLOT_GAP = IS_MOBILE and 32 or 26
    local slotLabels = {}
    for i = 1, 6 do
        local col = (i - 1) % 2
        local row = math.floor((i - 1) / 2)
        local sl = Instance.new("TextLabel", craftingFrame)
        sl.Size = UDim2.new(0, HALF_W, 0, SLOT_H)
        sl.Position = UDim2.new(0, col == 0 and 6 or (6 + HALF_W + 5), 0, cry + row * SLOT_GAP)
        sl.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        sl.TextColor3 = Color3.fromRGB(180, 160, 210)
        sl.Text = "Slot " .. i .. ": Empty"
        sl.TextSize = IS_MOBILE and 10 or 9
        sl.Font = Enum.Font.GothamBold
        sl.BorderSizePixel = 0
        sl.TextStrokeTransparency = 1
        sl.TextXAlignment = Enum.TextXAlignment.Center
        Instance.new("UICorner", sl).CornerRadius = UDim.new(0, 5)
        mkStroke(sl, Color3.fromRGB(50, 20, 80), 1, 0.3)
        slotLabels[i] = sl
    end
    cry = cry + math.ceil(6 / 2) * SLOT_GAP + 4

    table.insert(refreshFns, function()
        pcall(function()
            if not _G.AutoCraft then return end
            local snapshot = _G.AutoCraft.getSlotSnapshot()
            for i = 1, 6 do
                local entry = snapshot[i]
                if entry then
                    if entry.ts then
                        local rem = entry.ts - os.time()
                        if rem > 0 then
                            slotLabels[i].Text = "Slot " .. i .. ": " .. fmtTime(rem)
                            slotLabels[i].TextColor3 = Color3.fromRGB(255, 220, 140)
                        else
                            slotLabels[i].Text = "Slot " .. i .. ": Done!"
                            slotLabels[i].TextColor3 = Color3.fromRGB(55, 185, 85)
                        end
                    else
                        slotLabels[i].Text = "Slot " .. i .. ": Active"
                        slotLabels[i].TextColor3 = Color3.fromRGB(255, 220, 140)
                    end
                else
                    slotLabels[i].Text = "Slot " .. i .. ": Empty"
                    slotLabels[i].TextColor3 = Color3.fromRGB(180, 160, 210)
                end
            end
        end)
    end)

    -- ═══════════════════════════════════════════════════════════════════════════
    -- ─── Pet Crafting Section ─────────────────────────────────────────────────
    -- ═══════════════════════════════════════════════════════════════════════════

    -- Divider + header
    hLine(craftingFrame, cry) cry = cry + 8
    local petCraftHdr = Instance.new("TextLabel", craftingFrame)
    petCraftHdr.Size = UDim2.new(1, -12, 0, 16)
    petCraftHdr.Position = UDim2.new(0, 6, 0, cry)
    petCraftHdr.BackgroundTransparency = 1
    petCraftHdr.TextColor3 = Color3.fromRGB(255, 180, 80)
    petCraftHdr.Text = "Pet Crafting"
    petCraftHdr.TextSize = IS_MOBILE and 14 or 12
    petCraftHdr.Font = Enum.Font.GothamBold
    petCraftHdr.TextXAlignment = Enum.TextXAlignment.Left
    petCraftHdr.TextStrokeTransparency = 1
    cry = cry + 20
    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Auto Golden toggle ──
    local goldenDef = { label = "Auto Golden", key = "autoGolden", getApi = function() return _G.AutoGolden end, tip = "Crafts normal pets into golden pets" }
    makeToggleBtn(craftingFrame, goldenDef, 6, W - 16, cry)
    cry = cry + BTN_H + 4

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Golden pet multi-select dropdown ──
    local GOLD_MAX_OPTS = 60
    local GOLD_OPT_H = OPT_H
    local GOLD_OPT_GAP = OPT_GAP

    local goldContainer = Instance.new("Frame", craftingFrame)
    goldContainer.Size = UDim2.new(1, -12, 0, 42)
    goldContainer.Position = UDim2.new(0, 6, 0, cry)
    goldContainer.BackgroundTransparency = 1
    goldContainer.BorderSizePixel = 0
    goldContainer.ZIndex = 5

    local goldLbl = Instance.new("TextLabel", goldContainer)
    goldLbl.Size = UDim2.new(1, 0, 0, 14)
    goldLbl.BackgroundTransparency = 1
    goldLbl.TextColor3 = Color3.fromRGB(255, 200, 80)
    goldLbl.Text = "Golden Pets (multi-select)"
    goldLbl.TextSize = IS_MOBILE and 12 or 10
    goldLbl.Font = Enum.Font.GothamBold
    goldLbl.TextXAlignment = Enum.TextXAlignment.Left
    goldLbl.TextStrokeTransparency = 1

    local goldRfW = IS_MOBILE and 50 or 44
    local goldBtn = Instance.new("TextButton", goldContainer)
    goldBtn.Size = UDim2.new(1, -goldRfW - 4, 0, IS_MOBILE and 32 or 24)
    goldBtn.Position = UDim2.new(0, 0, 0, 16)
    goldBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    goldBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
    goldBtn.Text = "Select Pets..."
    goldBtn.TextSize = IS_MOBILE and 12 or 11
    goldBtn.Font = Enum.Font.GothamBold
    goldBtn.BorderSizePixel = 0
    goldBtn.TextStrokeTransparency = 1
    goldBtn.ZIndex = 5
    Instance.new("UICorner", goldBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(goldBtn, C_DIV, 1, 0.3)

    local goldRefreshBtn = Instance.new("TextButton", goldContainer)
    goldRefreshBtn.Size = UDim2.new(0, goldRfW, 0, IS_MOBILE and 32 or 24)
    goldRefreshBtn.Position = UDim2.new(1, -goldRfW, 0, 16)
    goldRefreshBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    goldRefreshBtn.TextColor3 = Color3.fromRGB(130, 220, 130)
    goldRefreshBtn.Text = "Refresh"
    goldRefreshBtn.TextSize = IS_MOBILE and 10 or 9
    goldRefreshBtn.Font = Enum.Font.GothamBold
    goldRefreshBtn.BorderSizePixel = 0
    goldRefreshBtn.TextStrokeTransparency = 1
    goldRefreshBtn.ZIndex = 5
    Instance.new("UICorner", goldRefreshBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(goldRefreshBtn, Color3.fromRGB(40, 140, 60), 1, 0.3)

    local goldList = Instance.new("ScrollingFrame", goldContainer)
    goldList.Size = UDim2.new(1, 0, 0, 0)
    goldList.Position = UDim2.new(0, 0, 0, IS_MOBILE and 50 or 42)
    goldList.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
    goldList.BorderSizePixel = 0
    goldList.Visible = false
    goldList.ScrollBarThickness = IS_MOBILE and 6 or 3
    goldList.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    goldList.ZIndex = 15
    Instance.new("UICorner", goldList).CornerRadius = UDim.new(0, 5)
    mkStroke(goldList, C_DIV, 1, 0.3)

    local goldOptBtns = {}
    local goldOptData = {}
    for i = 1, GOLD_MAX_OPTS do
        local ob = Instance.new("TextButton", goldList)
        ob.Size = UDim2.new(1, -4, 0, GOLD_OPT_H)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * GOLD_OPT_GAP)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = IS_MOBILE and 12 or 10
        ob.Font = Enum.Font.GothamBold
        ob.TextXAlignment = Enum.TextXAlignment.Left
        ob.BorderSizePixel = 0
        ob.TextStrokeTransparency = 1
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        local obStroke = mkStroke(ob, Color3.fromRGB(50, 20, 80), 1, 0.3)
        goldOptBtns[i] = { btn = ob, stroke = obStroke }

        ob.MouseButton1Click:Connect(function()
            local opt = goldOptData[i]
            if not opt then return end
            pcall(function()
                _G.AutoGolden.togglePet(opt.value)
                local on = _G.AutoGolden.hasPet(opt.value)
                ob.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                obStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                ob.Text = "  " .. (on and "ON  " or "       ") .. opt.display
                local count = 0
                for _ in pairs(_G.AutoGolden.getPets()) do count = count + 1 end
                goldBtn.Text = count > 0 and (count .. " pet" .. (count > 1 and "s" or "") .. " selected") or "Select Pets..."
                local state = loadState()
                local gp = {}
                for id in pairs(_G.AutoGolden.getPets()) do gp[id] = true end
                state.goldenPets = gp
                saveState(state)
            end)
        end)
    end

    -- Pet list caches: updated by background coroutine, read by click handlers
    -- Golden cache: pets with unlocked Normal variants; Rainbow cache: pets with unlocked Golden variants
    local goldPetCache = {}
    local rainbowPetCache = {}
    local enchantPetCache = {}
    local enchantListCache = {}
    local enchantListBuilt = false
    local petListError = "Waiting for data..."
    task.spawn(function()
        while true do
            task.wait()
            pcall(function()
                if not Stats or not Directory then petListError = "Waiting for modules..."; return end
                -- Build enchant list once from Directory.Enchants
                if not enchantListBuilt then
                    pcall(function()
                        local enchants = Directory.Enchants
                        if enchants then
                            local list = {}
                            for id, data in pairs(enchants) do
                                local maxTier = 5
                                if data.Tiers then
                                    if type(data.Tiers) == "table" then
                                        local count = 0
                                        for k in pairs(data.Tiers) do
                                            local n = tonumber(k) or count + 1
                                            if n > count then count = n end
                                        end
                                        if count > 0 then maxTier = count end
                                    elseif type(data.Tiers) == "number" and data.Tiers > 0 then
                                        maxTier = data.Tiers
                                    end
                                end
                                table.insert(list, {
                                    id = id,
                                    name = data.Title or id:gsub("(%l)(%u)", "%1 %2"),
                                    maxTier = maxTier,
                                    color = data.Color,
                                })
                            end
                            table.sort(list, function(a, b) return a.name < b.name end)
                            enchantListCache = list
                            enchantListBuilt = true
                        end
                    end)
                end
                local s = Stats.Local(true)
                if not s then petListError = "Stats.Local nil"; return end
                if not s.Pets then petListError = "No pet data"; return end
                local ep = s.EquippedPets or {}
                -- Build a tag string for each pet's modifiers (e.g. "Shiny+Bloodmoon+Wet")
                local function modTag(pet)
                    local tags = {}
                    if pet.Shiny then table.insert(tags, "Shiny") end
                    if pet.m and type(pet.m) == "table" then
                        local sorted = {}
                        for mutId in pairs(pet.m) do table.insert(sorted, mutId) end
                        table.sort(sorted)
                        for _, mutId in ipairs(sorted) do
                            local name = mutId:gsub("(%l)(%u)", "%1 %2")
                            table.insert(tags, name)
                        end
                    end
                    if #tags == 0 then return nil end
                    return table.concat(tags, "+")
                end
                -- inv[petId] = { name, mult, normal={[tag]=count}, golden={[tag]=count} }
                local inv = {}
                for uid, pet in pairs(s.Pets) do
                    if type(pet) == "table" and pet.id and not pet.Locked and not ep[uid] then
                        if not inv[pet.id] then
                            local name = pet.id
                            local mult = 0
                            pcall(function()
                                local pd = Directory.Pets[pet.id]
                                if pd then
                                    name = pd.Name or pet.id
                                    mult = pd.Stats and pd.Stats.Clicks or 0
                                end
                            end)
                            inv[pet.id] = { name = name, mult = mult, normal = {}, golden = {} }
                        end
                        local e = inv[pet.id]
                        local tag = modTag(pet) or "Normal"
                        if not pet.v or pet.v == "Normal" then
                            e.normal[tag] = (e.normal[tag] or 0) + 1
                        elseif pet.v == "Golden" then
                            if tag == "Normal" then tag = "Golden" end
                            e.golden[tag] = (e.golden[tag] or 0) + 1
                        end
                    end
                end
                local gList, rList = {}, {}
                for petId, d in pairs(inv) do
                    -- Golden dropdown: one line per variant tag (composite key = petId::modTag)
                    -- Plain Normal first (sorted by mult), then specials sorted by count desc
                    if d.normal.Normal then
                        local display = d.name .. " (x" .. d.normal.Normal .. " Normal)"
                        if d.mult > 0 then display = display .. " - " .. fmt(d.mult) end
                        table.insert(gList, { value = petId .. "|none", display = display, mult = d.mult, plain = true })
                    end
                    for tag, count in pairs(d.normal) do
                        if tag ~= "Normal" then
                            local display = d.name .. " (x" .. count .. " " .. tag .. ")"
                            if d.mult > 0 then display = display .. " - " .. fmt(d.mult) end
                            table.insert(gList, { value = petId .. "|" .. tag, display = display, mult = d.mult, plain = false })
                        end
                    end
                    -- Rainbow dropdown: one line per variant tag (composite key = petId::modTag)
                    if d.golden.Golden then
                        local display = d.name .. " (x" .. d.golden.Golden .. " Golden)"
                        if d.mult > 0 then display = display .. " - " .. fmt(d.mult) end
                        table.insert(rList, { value = petId .. "|none", display = display, mult = d.mult, plain = true })
                    end
                    for tag, count in pairs(d.golden) do
                        if tag ~= "Golden" then
                            local display = d.name .. " (x" .. count .. " " .. tag .. ")"
                            if d.mult > 0 then display = display .. " - " .. fmt(d.mult) end
                            table.insert(rList, { value = petId .. "|" .. tag, display = display, mult = d.mult, plain = false })
                        end
                    end
                end
                -- Sort: plain (craftable) first by mult desc, then specials by mult desc
                local function sortEntries(list)
                    table.sort(list, function(a, b)
                        if a.plain ~= b.plain then return a.plain end
                        return a.mult > b.mult
                    end)
                end
                sortEntries(gList)
                sortEntries(rList)
                goldPetCache = gList
                rainbowPetCache = rList
                -- Enchant cache: ALL non-locked pets by UUID (includes equipped)
                local eList = {}
                for uid, pet in pairs(s.Pets) do
                    if type(pet) == "table" and pet.id and not pet.Locked then
                        local petName = pet.id
                        pcall(function()
                            local pd = Directory.Pets[pet.id]
                            if pd and pd.Name then petName = pd.Name end
                        end)
                        local variant = ""
                        if pet.v and pet.v ~= "Normal" then variant = " (" .. pet.v .. ")" end
                        local enchStr = "None"
                        if pet.Enchant and pet.Enchant.Id then
                            local eName = pet.Enchant.Id:gsub("(%l)(%u)", "%1 %2")
                            pcall(function()
                                if enchantListBuilt then
                                    for _, e in ipairs(enchantListCache) do
                                        if e.id == pet.Enchant.Id then eName = e.name; break end
                                    end
                                end
                            end)
                            local roman = {"I","II","III","IV","V"}
                            local tierStr = roman[pet.Enchant.Tier] or tostring(pet.Enchant.Tier)
                            enchStr = eName .. " " .. tierStr
                        end
                        local display = petName .. variant .. " - " .. enchStr
                        table.insert(eList, { value = uid, display = display, petId = pet.id, name = petName })
                    end
                end
                table.sort(eList, function(a, b) return a.name < b.name end)
                enchantPetCache = eList
                petListError = nil
            end)
        end
    end)

    local function populateGoldOpts(pets)
        for i = 1, GOLD_MAX_OPTS do
            local rb = goldOptBtns[i]
            if not rb then continue end
            if i <= #pets then
                local data = pets[i]
                local on = _G.AutoGolden.hasPet(data.value)
                rb.btn.Text = "  " .. (on and "ON  " or "       ") .. data.display
                rb.btn.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                rb.stroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                rb.btn.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * GOLD_OPT_GAP)
                rb.btn.Visible = true
                goldOptData[i] = data
            else
                rb.btn.Visible = false
                goldOptData[i] = nil
            end
        end
        local count = math.min(#pets, GOLD_MAX_OPTS)
        local ch = 2 + count * GOLD_OPT_GAP + 2
        goldList.CanvasSize = UDim2.new(0, 0, 0, ch)
        goldList.Size = UDim2.new(1, 0, 0, math.min(ch, IS_MOBILE and 200 or 180))
    end

    local function openGoldDropdown()
        if petListError then
            goldBtn.Text = petListError
            return
        end
        if #goldPetCache == 0 then
            goldBtn.Text = "No normal pets found"
            return
        end
        populateGoldOpts(goldPetCache)
        goldList.Visible = true
        local gc = 0
        for _ in pairs(_G.AutoGolden.getPets()) do gc = gc + 1 end
        goldBtn.Text = gc > 0 and (gc .. " pet" .. (gc > 1 and "s" or "") .. " selected") or "Select Pets..."
    end

    goldBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if goldList.Visible then
                goldList.Visible = false
            else
                openGoldDropdown()
            end
        end)
    end)

    goldRefreshBtn.MouseButton1Click:Connect(function()
        pcall(function()
            openGoldDropdown()
        end)
    end)
    cry = cry + (IS_MOBILE and 54 or 48)

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Golden Craft Amount selector (1-6) ──
    local gAmtLbl = Instance.new("TextLabel", craftingFrame)
    gAmtLbl.Size = UDim2.new(0, 110, 0, IS_MOBILE and 28 or 22)
    gAmtLbl.Position = UDim2.new(0, 6, 0, cry)
    gAmtLbl.BackgroundTransparency = 1
    gAmtLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    gAmtLbl.Text = "Golden Amount:"
    gAmtLbl.TextSize = IS_MOBILE and 12 or 11
    gAmtLbl.Font = Enum.Font.GothamBold
    gAmtLbl.TextXAlignment = Enum.TextXAlignment.Left
    gAmtLbl.TextStrokeTransparency = 1

    local gAmtBtnH = IS_MOBILE and 32 or 22
    local gAmtBtnW = math.floor((W - 128) / 6)
    local gAmtBtns = {}
    for i = 1, 6 do
        local ab = Instance.new("TextButton", craftingFrame)
        ab.Size = UDim2.new(0, gAmtBtnW, 0, gAmtBtnH)
        ab.Position = UDim2.new(0, 118 + (i - 1) * (gAmtBtnW + 2), 0, cry)
        ab.Text = tostring(i)
        ab.TextSize = IS_MOBILE and 13 or 11
        ab.Font = Enum.Font.GothamBold
        ab.BorderSizePixel = 0
        ab.TextStrokeTransparency = 1
        Instance.new("UICorner", ab).CornerRadius = UDim.new(0, 5)
        local abStroke = mkStroke(ab, C_BSTR_ON, 1, 0.2)
        local function refreshGAmt()
            local on = _G.AutoGolden and _G.AutoGolden.getAmount() == i
            ab.BackgroundColor3 = on and C_BTN_ON or Color3.fromRGB(28, 10, 50)
            ab.TextColor3 = on and C_BTXT_ON or Color3.fromRGB(200, 180, 230)
            abStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
        end
        ab.MouseButton1Click:Connect(function()
            pcall(function()
                _G.AutoGolden.setAmount(i)
                for _, fn in ipairs(gAmtBtns) do fn() end
                local state = loadState()
                state.goldenAmount = i
                saveState(state)
            end)
        end)
        refreshGAmt()
        gAmtBtns[i] = refreshGAmt
        table.insert(refreshFns, refreshGAmt)
    end
    cry = cry + gAmtBtnH + 6

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Auto Rainbow toggle ──
    local rainbowDef = { label = "Auto Rainbow", key = "autoRainbow", getApi = function() return _G.AutoRainbow end, tip = "Crafts golden pets into rainbow pets" }
    makeToggleBtn(craftingFrame, rainbowDef, 6, W - 16, cry)
    cry = cry + BTN_H + 4

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Rainbow pet multi-select dropdown ──
    local rbContainer = Instance.new("Frame", craftingFrame)
    rbContainer.Size = UDim2.new(1, -12, 0, 42)
    rbContainer.Position = UDim2.new(0, 6, 0, cry)
    rbContainer.BackgroundTransparency = 1
    rbContainer.BorderSizePixel = 0
    rbContainer.ZIndex = 5

    local rbDDLbl = Instance.new("TextLabel", rbContainer)
    rbDDLbl.Size = UDim2.new(1, 0, 0, 14)
    rbDDLbl.BackgroundTransparency = 1
    rbDDLbl.TextColor3 = Color3.fromRGB(130, 200, 255)
    rbDDLbl.Text = "Rainbow Pets (multi-select)"
    rbDDLbl.TextSize = IS_MOBILE and 12 or 10
    rbDDLbl.Font = Enum.Font.GothamBold
    rbDDLbl.TextXAlignment = Enum.TextXAlignment.Left
    rbDDLbl.TextStrokeTransparency = 1

    local rbRfW = IS_MOBILE and 50 or 44
    local rbDDBtn = Instance.new("TextButton", rbContainer)
    rbDDBtn.Size = UDim2.new(1, -rbRfW - 4, 0, IS_MOBILE and 32 or 24)
    rbDDBtn.Position = UDim2.new(0, 0, 0, 16)
    rbDDBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    rbDDBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
    rbDDBtn.Text = "Select Pets..."
    rbDDBtn.TextSize = IS_MOBILE and 12 or 11
    rbDDBtn.Font = Enum.Font.GothamBold
    rbDDBtn.BorderSizePixel = 0
    rbDDBtn.TextStrokeTransparency = 1
    rbDDBtn.ZIndex = 5
    Instance.new("UICorner", rbDDBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(rbDDBtn, C_DIV, 1, 0.3)

    local rbRefreshBtn = Instance.new("TextButton", rbContainer)
    rbRefreshBtn.Size = UDim2.new(0, rbRfW, 0, IS_MOBILE and 32 or 24)
    rbRefreshBtn.Position = UDim2.new(1, -rbRfW, 0, 16)
    rbRefreshBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    rbRefreshBtn.TextColor3 = Color3.fromRGB(130, 220, 130)
    rbRefreshBtn.Text = "Refresh"
    rbRefreshBtn.TextSize = IS_MOBILE and 10 or 9
    rbRefreshBtn.Font = Enum.Font.GothamBold
    rbRefreshBtn.BorderSizePixel = 0
    rbRefreshBtn.TextStrokeTransparency = 1
    rbRefreshBtn.ZIndex = 5
    Instance.new("UICorner", rbRefreshBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(rbRefreshBtn, Color3.fromRGB(40, 140, 60), 1, 0.3)

    local rbDDList = Instance.new("ScrollingFrame", rbContainer)
    rbDDList.Size = UDim2.new(1, 0, 0, 0)
    rbDDList.Position = UDim2.new(0, 0, 0, IS_MOBILE and 50 or 42)
    rbDDList.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
    rbDDList.BorderSizePixel = 0
    rbDDList.Visible = false
    rbDDList.ScrollBarThickness = IS_MOBILE and 6 or 3
    rbDDList.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    rbDDList.ZIndex = 15
    Instance.new("UICorner", rbDDList).CornerRadius = UDim.new(0, 5)
    mkStroke(rbDDList, C_DIV, 1, 0.3)

    local rbOptBtns = {}
    local rbOptData = {}
    for i = 1, GOLD_MAX_OPTS do
        local ob = Instance.new("TextButton", rbDDList)
        ob.Size = UDim2.new(1, -4, 0, GOLD_OPT_H)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * GOLD_OPT_GAP)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = IS_MOBILE and 12 or 10
        ob.Font = Enum.Font.GothamBold
        ob.TextXAlignment = Enum.TextXAlignment.Left
        ob.BorderSizePixel = 0
        ob.TextStrokeTransparency = 1
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        local obStroke = mkStroke(ob, Color3.fromRGB(50, 20, 80), 1, 0.3)
        rbOptBtns[i] = { btn = ob, stroke = obStroke }

        ob.MouseButton1Click:Connect(function()
            local opt = rbOptData[i]
            if not opt then return end
            pcall(function()
                _G.AutoRainbow.togglePet(opt.value)
                local on = _G.AutoRainbow.hasPet(opt.value)
                ob.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                obStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                ob.Text = "  " .. (on and "ON  " or "       ") .. opt.display
                local count = 0
                for _ in pairs(_G.AutoRainbow.getPets()) do count = count + 1 end
                rbDDBtn.Text = count > 0 and (count .. " pet" .. (count > 1 and "s" or "") .. " selected") or "Select Pets..."
                local state = loadState()
                local rp = {}
                for id in pairs(_G.AutoRainbow.getPets()) do rp[id] = true end
                state.rainbowPets = rp
                saveState(state)
            end)
        end)
    end

    local function populateRbOpts(pets)
        for i = 1, GOLD_MAX_OPTS do
            local rb = rbOptBtns[i]
            if not rb then continue end
            if i <= #pets then
                local data = pets[i]
                local on = _G.AutoRainbow.hasPet(data.value)
                rb.btn.Text = "  " .. (on and "ON  " or "       ") .. data.display
                rb.btn.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                rb.stroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                rb.btn.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * GOLD_OPT_GAP)
                rb.btn.Visible = true
                rbOptData[i] = data
            else
                rb.btn.Visible = false
                rbOptData[i] = nil
            end
        end
        local count = math.min(#pets, GOLD_MAX_OPTS)
        local ch = 2 + count * GOLD_OPT_GAP + 2
        rbDDList.CanvasSize = UDim2.new(0, 0, 0, ch)
        rbDDList.Size = UDim2.new(1, 0, 0, math.min(ch, IS_MOBILE and 200 or 180))
    end

    local function openRbDropdown()
        if petListError then
            rbDDBtn.Text = petListError
            return
        end
        if #rainbowPetCache == 0 then
            rbDDBtn.Text = "No golden pets found"
            return
        end
        populateRbOpts(rainbowPetCache)
        rbDDList.Visible = true
        local rc = 0
        for _ in pairs(_G.AutoRainbow.getPets()) do rc = rc + 1 end
        rbDDBtn.Text = rc > 0 and (rc .. " pet" .. (rc > 1 and "s" or "") .. " selected") or "Select Pets..."
    end

    rbDDBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if rbDDList.Visible then
                rbDDList.Visible = false
            else
                openRbDropdown()
            end
        end)
    end)

    rbRefreshBtn.MouseButton1Click:Connect(function()
        pcall(function()
            openRbDropdown()
        end)
    end)
    cry = cry + (IS_MOBILE and 54 or 48)

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Rainbow Craft Amount selector (1-6) ──
    local rAmtLbl = Instance.new("TextLabel", craftingFrame)
    rAmtLbl.Size = UDim2.new(0, 120, 0, IS_MOBILE and 28 or 22)
    rAmtLbl.Position = UDim2.new(0, 6, 0, cry)
    rAmtLbl.BackgroundTransparency = 1
    rAmtLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    rAmtLbl.Text = "Rainbow Amount:"
    rAmtLbl.TextSize = IS_MOBILE and 12 or 11
    rAmtLbl.Font = Enum.Font.GothamBold
    rAmtLbl.TextXAlignment = Enum.TextXAlignment.Left
    rAmtLbl.TextStrokeTransparency = 1

    local rAmtBtnH = IS_MOBILE and 32 or 22
    local rAmtBtnW = math.floor((W - 138) / 6)
    local rAmtBtns = {}
    for i = 1, 6 do
        local ab = Instance.new("TextButton", craftingFrame)
        ab.Size = UDim2.new(0, rAmtBtnW, 0, rAmtBtnH)
        ab.Position = UDim2.new(0, 128 + (i - 1) * (rAmtBtnW + 2), 0, cry)
        ab.Text = tostring(i)
        ab.TextSize = IS_MOBILE and 13 or 11
        ab.Font = Enum.Font.GothamBold
        ab.BorderSizePixel = 0
        ab.TextStrokeTransparency = 1
        Instance.new("UICorner", ab).CornerRadius = UDim.new(0, 5)
        local abStroke = mkStroke(ab, C_BSTR_ON, 1, 0.2)
        local function refreshRAmt()
            local on = _G.AutoRainbow and _G.AutoRainbow.getAmount() == i
            ab.BackgroundColor3 = on and C_BTN_ON or Color3.fromRGB(28, 10, 50)
            ab.TextColor3 = on and C_BTXT_ON or Color3.fromRGB(200, 180, 230)
            abStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
        end
        ab.MouseButton1Click:Connect(function()
            pcall(function()
                _G.AutoRainbow.setAmount(i)
                for _, fn in ipairs(rAmtBtns) do fn() end
                local state = loadState()
                state.rainbowAmount = i
                saveState(state)
            end)
        end)
        refreshRAmt()
        rAmtBtns[i] = refreshRAmt
        table.insert(refreshFns, refreshRAmt)
    end
    cry = cry + rAmtBtnH + 6

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Golden status label ──
    local goldenStatusLbl = Instance.new("TextLabel", craftingFrame)
    goldenStatusLbl.Size = UDim2.new(1, -12, 0, 18)
    goldenStatusLbl.Position = UDim2.new(0, 6, 0, cry)
    goldenStatusLbl.BackgroundTransparency = 1
    goldenStatusLbl.TextColor3 = Color3.fromRGB(255, 200, 80)
    goldenStatusLbl.Text = "Golden: Idle"
    goldenStatusLbl.TextSize = IS_MOBILE and 11 or 10
    goldenStatusLbl.Font = Enum.Font.GothamBold
    goldenStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
    goldenStatusLbl.TextStrokeTransparency = 1
    table.insert(refreshFns, function()
        pcall(function()
            if _G.AutoGolden then goldenStatusLbl.Text = "Golden: " .. _G.AutoGolden.getStatus() end
        end)
    end)
    cry = cry + 22

    -- ── Rainbow status label ──
    local rainbowStatusLbl = Instance.new("TextLabel", craftingFrame)
    rainbowStatusLbl.Size = UDim2.new(1, -12, 0, 18)
    rainbowStatusLbl.Position = UDim2.new(0, 6, 0, cry)
    rainbowStatusLbl.BackgroundTransparency = 1
    rainbowStatusLbl.TextColor3 = Color3.fromRGB(130, 200, 255)
    rainbowStatusLbl.Text = "Rainbow: Idle"
    rainbowStatusLbl.TextSize = IS_MOBILE and 11 or 10
    rainbowStatusLbl.Font = Enum.Font.GothamBold
    rainbowStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
    rainbowStatusLbl.TextStrokeTransparency = 1
    table.insert(refreshFns, function()
        pcall(function()
            if _G.AutoRainbow then rainbowStatusLbl.Text = "Rainbow: " .. _G.AutoRainbow.getStatus() end
        end)
    end)
    cry = cry + 22

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Rainbow 3-slot status display ──
    local rbSlotsLbl = Instance.new("TextLabel", craftingFrame)
    rbSlotsLbl.Size = UDim2.new(1, -12, 0, 14)
    rbSlotsLbl.Position = UDim2.new(0, 6, 0, cry)
    rbSlotsLbl.BackgroundTransparency = 1
    rbSlotsLbl.TextColor3 = Color3.fromRGB(130, 200, 255)
    rbSlotsLbl.Text = "Rainbow Slots"
    rbSlotsLbl.TextSize = IS_MOBILE and 11 or 10
    rbSlotsLbl.Font = Enum.Font.GothamBold
    rbSlotsLbl.TextXAlignment = Enum.TextXAlignment.Left
    rbSlotsLbl.TextStrokeTransparency = 1
    cry = cry + 18

    local RB_SLOT_H = IS_MOBILE and 28 or 22
    local RB_SLOT_W = math.floor((W - 20) / 3)
    local rbSlotLabels = {}
    for i = 1, 3 do
        local sl = Instance.new("TextLabel", craftingFrame)
        sl.Size = UDim2.new(0, RB_SLOT_W, 0, RB_SLOT_H)
        sl.Position = UDim2.new(0, 6 + (i - 1) * (RB_SLOT_W + 3), 0, cry)
        sl.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        sl.TextColor3 = Color3.fromRGB(180, 160, 210)
        sl.Text = "Slot " .. i .. ": Empty"
        sl.TextSize = IS_MOBILE and 10 or 9
        sl.Font = Enum.Font.GothamBold
        sl.BorderSizePixel = 0
        sl.TextStrokeTransparency = 1
        sl.TextXAlignment = Enum.TextXAlignment.Center
        Instance.new("UICorner", sl).CornerRadius = UDim.new(0, 5)
        mkStroke(sl, Color3.fromRGB(50, 20, 80), 1, 0.3)
        rbSlotLabels[i] = sl
    end
    cry = cry + RB_SLOT_H + 6

    table.insert(refreshFns, function()
        pcall(function()
            if not _G.AutoRainbow then return end
            local snapshot = _G.AutoRainbow.getSlotSnapshot()
            local now = nil
            pcall(function() now = workspace:GetServerTimeNow() end)
            if not now then now = os.time() end
            for i = 1, 3 do
                local entry = snapshot[i]
                if entry then
                    if entry.ts then
                        local rem = entry.ts - now
                        if rem > 0 then
                            rbSlotLabels[i].Text = "Slot " .. i .. ": " .. fmtTime(rem)
                            rbSlotLabels[i].TextColor3 = Color3.fromRGB(255, 220, 140)
                        else
                            rbSlotLabels[i].Text = "Slot " .. i .. ": Done!"
                            rbSlotLabels[i].TextColor3 = Color3.fromRGB(55, 185, 85)
                        end
                    else
                        rbSlotLabels[i].Text = "Slot " .. i .. ": Active"
                        rbSlotLabels[i].TextColor3 = Color3.fromRGB(255, 220, 140)
                    end
                else
                    rbSlotLabels[i].Text = "Slot " .. i .. ": Empty"
                    rbSlotLabels[i].TextColor3 = Color3.fromRGB(180, 160, 210)
                end
            end
        end)
    end)

    -- ═══════════════════════════════════════════════════════════════════════════
    -- ─── Enchanting Section (own function scope — local register limit) ─────
    -- ═══════════════════════════════════════════════════════════════════════════
    cry = (function(cry)

    local selectedMaxTier = 5
    local mtBtns = {}

    hLine(craftingFrame, cry) cry = cry + 8
    local enchantHdr = Instance.new("TextLabel", craftingFrame)
    enchantHdr.Size = UDim2.new(1, -12, 0, 16)
    enchantHdr.Position = UDim2.new(0, 6, 0, cry)
    enchantHdr.BackgroundTransparency = 1
    enchantHdr.TextColor3 = Color3.fromRGB(80, 220, 200)
    enchantHdr.Text = "Enchanting"
    enchantHdr.TextSize = IS_MOBILE and 14 or 12
    enchantHdr.Font = Enum.Font.GothamBold
    enchantHdr.TextXAlignment = Enum.TextXAlignment.Left
    enchantHdr.TextStrokeTransparency = 1
    cry = cry + 20
    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Auto Enchant toggle ──
    local enchantDef = { label = "Auto Enchant", key = "autoEnchant", getApi = function() return _G.AutoEnchant end, tip = "Rolls enchants on selected pets until desired enchant+tier" }
    makeToggleBtn(craftingFrame, enchantDef, 6, W - 16, cry)
    cry = cry + BTN_H + 4

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Enchant pet multi-select dropdown (by UUID) ──
    local ENCHANT_PET_MAX_OPTS = 5000
    local EP_OPT_H = OPT_H
    local EP_OPT_GAP = OPT_GAP

    local epContainer = Instance.new("Frame", craftingFrame)
    epContainer.Size = UDim2.new(1, -12, 0, 42)
    epContainer.Position = UDim2.new(0, 6, 0, cry)
    epContainer.BackgroundTransparency = 1
    epContainer.BorderSizePixel = 0
    epContainer.ZIndex = 5

    local epLbl = Instance.new("TextLabel", epContainer)
    epLbl.Size = UDim2.new(1, 0, 0, 14)
    epLbl.BackgroundTransparency = 1
    epLbl.TextColor3 = Color3.fromRGB(80, 220, 200)
    epLbl.Text = "Enchant Pets (multi-select)"
    epLbl.TextSize = IS_MOBILE and 12 or 10
    epLbl.Font = Enum.Font.GothamBold
    epLbl.TextXAlignment = Enum.TextXAlignment.Left
    epLbl.TextStrokeTransparency = 1

    local epRfW = IS_MOBILE and 50 or 44
    local epBtn = Instance.new("TextButton", epContainer)
    epBtn.Size = UDim2.new(1, -epRfW - 4, 0, IS_MOBILE and 32 or 24)
    epBtn.Position = UDim2.new(0, 0, 0, 16)
    epBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    epBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
    epBtn.Text = "Select Pets..."
    epBtn.TextSize = IS_MOBILE and 12 or 11
    epBtn.Font = Enum.Font.GothamBold
    epBtn.BorderSizePixel = 0
    epBtn.TextStrokeTransparency = 1
    epBtn.ZIndex = 5
    Instance.new("UICorner", epBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(epBtn, C_DIV, 1, 0.3)

    local epRefreshBtn = Instance.new("TextButton", epContainer)
    epRefreshBtn.Size = UDim2.new(0, epRfW, 0, IS_MOBILE and 32 or 24)
    epRefreshBtn.Position = UDim2.new(1, -epRfW, 0, 16)
    epRefreshBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    epRefreshBtn.TextColor3 = Color3.fromRGB(130, 220, 130)
    epRefreshBtn.Text = "Refresh"
    epRefreshBtn.TextSize = IS_MOBILE and 10 or 9
    epRefreshBtn.Font = Enum.Font.GothamBold
    epRefreshBtn.BorderSizePixel = 0
    epRefreshBtn.TextStrokeTransparency = 1
    epRefreshBtn.ZIndex = 5
    Instance.new("UICorner", epRefreshBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(epRefreshBtn, Color3.fromRGB(40, 140, 60), 1, 0.3)

    local epList = Instance.new("ScrollingFrame", epContainer)
    epList.Size = UDim2.new(1, 0, 0, 0)
    epList.Position = UDim2.new(0, 0, 0, IS_MOBILE and 50 or 42)
    epList.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
    epList.BorderSizePixel = 0
    epList.Visible = false
    epList.ScrollBarThickness = IS_MOBILE and 6 or 3
    epList.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    epList.ZIndex = 15
    Instance.new("UICorner", epList).CornerRadius = UDim.new(0, 5)
    mkStroke(epList, C_DIV, 1, 0.3)

    local epOptBtns = {}
    local epOptData = {}
    for i = 1, ENCHANT_PET_MAX_OPTS do
        local ob = Instance.new("TextButton", epList)
        ob.Size = UDim2.new(1, -4, 0, EP_OPT_H)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * EP_OPT_GAP)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = IS_MOBILE and 12 or 10
        ob.Font = Enum.Font.GothamBold
        ob.TextXAlignment = Enum.TextXAlignment.Left
        ob.BorderSizePixel = 0
        ob.TextStrokeTransparency = 1
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        local obStroke = mkStroke(ob, Color3.fromRGB(50, 20, 80), 1, 0.3)
        epOptBtns[i] = { btn = ob, stroke = obStroke }

        ob.MouseButton1Click:Connect(function()
            local opt = epOptData[i]
            if not opt then return end
            pcall(function()
                _G.AutoEnchant.togglePet(opt.value)
                local on = _G.AutoEnchant.hasPet(opt.value)
                ob.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                obStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                ob.Text = "  " .. (on and "ON  " or "       ") .. opt.display
                local count = 0
                for _ in pairs(_G.AutoEnchant.getPets()) do count = count + 1 end
                epBtn.Text = count > 0 and (count .. " pet" .. (count > 1 and "s" or "") .. " selected") or "Select Pets..."
                local state = loadState()
                local ep = {}
                for uuid in pairs(_G.AutoEnchant.getPets()) do ep[uuid] = true end
                state.enchantPets = ep
                saveState(state)
            end)
        end)
    end

    local function populateEpOpts(pets)
        for i = 1, ENCHANT_PET_MAX_OPTS do
            local rb = epOptBtns[i]
            if not rb then continue end
            if i <= #pets then
                local data = pets[i]
                local on = _G.AutoEnchant.hasPet(data.value)
                rb.btn.Text = "  " .. (on and "ON  " or "       ") .. data.display
                rb.btn.BackgroundColor3 = on and Color3.fromRGB(30, 60, 30) or Color3.fromRGB(28, 10, 50)
                rb.stroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
                rb.btn.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * EP_OPT_GAP)
                rb.btn.Visible = true
                epOptData[i] = data
            else
                rb.btn.Visible = false
                epOptData[i] = nil
            end
        end
        local count = math.min(#pets, ENCHANT_PET_MAX_OPTS)
        local ch = 2 + count * EP_OPT_GAP + 2
        epList.CanvasSize = UDim2.new(0, 0, 0, ch)
        epList.Size = UDim2.new(1, 0, 0, math.min(ch, IS_MOBILE and 200 or 180))
    end

    local function openEpDropdown()
        if petListError then
            epBtn.Text = petListError
            return
        end
        if #enchantPetCache == 0 then
            epBtn.Text = "No pets found"
            return
        end
        populateEpOpts(enchantPetCache)
        epList.Visible = true
        local ec = 0
        for _ in pairs(_G.AutoEnchant.getPets()) do ec = ec + 1 end
        epBtn.Text = ec > 0 and (ec .. " pet" .. (ec > 1 and "s" or "") .. " selected") or "Select Pets..."
    end

    epBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if epList.Visible then epList.Visible = false else openEpDropdown() end
        end)
    end)

    epRefreshBtn.MouseButton1Click:Connect(function()
        pcall(function() openEpDropdown() end)
    end)
    cry = cry + (IS_MOBILE and 54 or 48)

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Enchant selector dropdown (single-select) ──
    local ENCHANT_MAX_OPTS = 15

    local enchSelContainer = Instance.new("Frame", craftingFrame)
    enchSelContainer.Size = UDim2.new(1, -12, 0, 42)
    enchSelContainer.Position = UDim2.new(0, 6, 0, cry)
    enchSelContainer.BackgroundTransparency = 1
    enchSelContainer.BorderSizePixel = 0
    enchSelContainer.ZIndex = 5

    local enchSelLbl = Instance.new("TextLabel", enchSelContainer)
    enchSelLbl.Size = UDim2.new(1, 0, 0, 14)
    enchSelLbl.BackgroundTransparency = 1
    enchSelLbl.TextColor3 = Color3.fromRGB(80, 220, 200)
    enchSelLbl.Text = "Desired Enchant"
    enchSelLbl.TextSize = IS_MOBILE and 12 or 10
    enchSelLbl.Font = Enum.Font.GothamBold
    enchSelLbl.TextXAlignment = Enum.TextXAlignment.Left
    enchSelLbl.TextStrokeTransparency = 1

    local enchSelBtn = Instance.new("TextButton", enchSelContainer)
    enchSelBtn.Size = UDim2.new(1, 0, 0, IS_MOBILE and 32 or 24)
    enchSelBtn.Position = UDim2.new(0, 0, 0, 16)
    enchSelBtn.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
    enchSelBtn.TextColor3 = Color3.fromRGB(200, 180, 230)
    enchSelBtn.Text = "Select Enchant..."
    enchSelBtn.TextSize = IS_MOBILE and 12 or 11
    enchSelBtn.Font = Enum.Font.GothamBold
    enchSelBtn.BorderSizePixel = 0
    enchSelBtn.TextStrokeTransparency = 1
    enchSelBtn.ZIndex = 5
    Instance.new("UICorner", enchSelBtn).CornerRadius = UDim.new(0, 5)
    mkStroke(enchSelBtn, C_DIV, 1, 0.3)

    local enchSelList = Instance.new("ScrollingFrame", enchSelContainer)
    enchSelList.Size = UDim2.new(1, 0, 0, 0)
    enchSelList.Position = UDim2.new(0, 0, 0, IS_MOBILE and 50 or 42)
    enchSelList.BackgroundColor3 = Color3.fromRGB(18, 6, 34)
    enchSelList.BorderSizePixel = 0
    enchSelList.Visible = false
    enchSelList.ScrollBarThickness = IS_MOBILE and 6 or 3
    enchSelList.ScrollBarImageColor3 = Color3.fromRGB(90, 28, 140)
    enchSelList.ZIndex = 15
    Instance.new("UICorner", enchSelList).CornerRadius = UDim.new(0, 5)
    mkStroke(enchSelList, C_DIV, 1, 0.3)

    local enchOptBtns = {}
    local enchOptData = {}
    for i = 1, ENCHANT_MAX_OPTS do
        local ob = Instance.new("TextButton", enchSelList)
        ob.Size = UDim2.new(1, -4, 0, EP_OPT_H)
        ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * EP_OPT_GAP)
        ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50)
        ob.TextColor3 = Color3.fromRGB(220, 200, 255)
        ob.Text = ""
        ob.TextSize = IS_MOBILE and 12 or 10
        ob.Font = Enum.Font.GothamBold
        ob.TextXAlignment = Enum.TextXAlignment.Left
        ob.BorderSizePixel = 0
        ob.TextStrokeTransparency = 1
        ob.ZIndex = 16
        ob.Visible = false
        Instance.new("UICorner", ob).CornerRadius = UDim.new(0, 4)
        ob.MouseEnter:Connect(function() pcall(function() ob.BackgroundColor3 = C_BTN_ON end) end)
        ob.MouseLeave:Connect(function() pcall(function() ob.BackgroundColor3 = Color3.fromRGB(28, 10, 50) end) end)
        enchOptBtns[i] = ob

        ob.MouseButton1Click:Connect(function()
            local opt = enchOptData[i]
            if not opt then return end
            pcall(function()
                _G.AutoEnchant.setEnchant(opt.id)
                enchSelBtn.Text = opt.name
                enchSelList.Visible = false
                selectedMaxTier = (opt.maxTier and opt.maxTier > 0) and opt.maxTier or 5
                if _G.AutoEnchant.getMinTier() > selectedMaxTier then
                    _G.AutoEnchant.setMinTier(selectedMaxTier)
                end
                for _, fn in ipairs(mtBtns) do fn() end
                local state = loadState()
                state.enchantId = opt.id
                state.enchantMinTier = _G.AutoEnchant.getMinTier()
                saveState(state)
            end)
        end)
    end

    local function populateEnchOpts()
        if #enchantListCache == 0 then
            enchSelBtn.Text = "Waiting for enchant data..."
            return
        end
        for i = 1, ENCHANT_MAX_OPTS do
            local ob = enchOptBtns[i]
            if not ob then continue end
            if i <= #enchantListCache then
                local data = enchantListCache[i]
                local roman = {"I","II","III","IV","V"}
                local tierTag = roman[data.maxTier] or tostring(data.maxTier)
                ob.Text = "  " .. data.name .. " (max " .. tierTag .. ")"
                ob.Position = UDim2.new(0, 2, 0, 2 + (i - 1) * EP_OPT_GAP)
                ob.Visible = true
                enchOptData[i] = data
            else
                ob.Visible = false
                enchOptData[i] = nil
            end
        end
        local count = math.min(#enchantListCache, ENCHANT_MAX_OPTS)
        local ch = 2 + count * EP_OPT_GAP + 2
        enchSelList.CanvasSize = UDim2.new(0, 0, 0, ch)
        enchSelList.Size = UDim2.new(1, 0, 0, math.min(ch, IS_MOBILE and 200 or 180))
    end

    enchSelBtn.MouseButton1Click:Connect(function()
        pcall(function()
            if enchSelList.Visible then
                enchSelList.Visible = false
            else
                populateEnchOpts()
                enchSelList.Visible = true
            end
        end)
    end)
    cry = cry + (IS_MOBILE and 54 or 48)

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Min Tier selector (1-5) ──
    local mtLbl = Instance.new("TextLabel", craftingFrame)
    mtLbl.Size = UDim2.new(0, 80, 0, IS_MOBILE and 28 or 22)
    mtLbl.Position = UDim2.new(0, 6, 0, cry)
    mtLbl.BackgroundTransparency = 1
    mtLbl.TextColor3 = Color3.fromRGB(190, 150, 255)
    mtLbl.Text = "Min Tier:"
    mtLbl.TextSize = IS_MOBILE and 12 or 11
    mtLbl.Font = Enum.Font.GothamBold
    mtLbl.TextXAlignment = Enum.TextXAlignment.Left
    mtLbl.TextStrokeTransparency = 1

    local mtBtnH = IS_MOBILE and 32 or 22
    local mtBtnW = math.floor((W - 100) / 5)
    local mtBtnObjs = {}
    for i = 1, 5 do
        local ab = Instance.new("TextButton", craftingFrame)
        ab.Size = UDim2.new(0, mtBtnW, 0, mtBtnH)
        ab.Position = UDim2.new(0, 88 + (i - 1) * (mtBtnW + 2), 0, cry)
        ab.Text = tostring(i)
        ab.TextSize = IS_MOBILE and 13 or 11
        ab.Font = Enum.Font.GothamBold
        ab.BorderSizePixel = 0
        ab.TextStrokeTransparency = 1
        Instance.new("UICorner", ab).CornerRadius = UDim.new(0, 5)
        local abStroke = mkStroke(ab, C_BSTR_ON, 1, 0.2)
        mtBtnObjs[i] = { btn = ab, stroke = abStroke }
        local function refreshMT()
            if i > selectedMaxTier then
                ab.Visible = false
                return
            end
            ab.Visible = true
            local on = _G.AutoEnchant and _G.AutoEnchant.getMinTier() == i
            ab.BackgroundColor3 = on and C_BTN_ON or Color3.fromRGB(28, 10, 50)
            ab.TextColor3 = on and C_BTXT_ON or Color3.fromRGB(200, 180, 230)
            abStroke.Color = on and C_BSTR_ON or Color3.fromRGB(50, 20, 80)
        end
        ab.MouseButton1Click:Connect(function()
            pcall(function()
                _G.AutoEnchant.setMinTier(i)
                for _, fn in ipairs(mtBtns) do fn() end
                local state = loadState()
                state.enchantMinTier = i
                saveState(state)
            end)
        end)
        refreshMT()
        mtBtns[i] = refreshMT
        table.insert(refreshFns, refreshMT)
    end
    cry = cry + mtBtnH + 6

    hLine(craftingFrame, cry) cry = cry + 6

    -- ── Enchant status label ──
    local enchantStatusLbl = Instance.new("TextLabel", craftingFrame)
    enchantStatusLbl.Size = UDim2.new(1, -12, 0, 18)
    enchantStatusLbl.Position = UDim2.new(0, 6, 0, cry)
    enchantStatusLbl.BackgroundTransparency = 1
    enchantStatusLbl.TextColor3 = Color3.fromRGB(80, 220, 200)
    enchantStatusLbl.Text = "Enchant: Idle"
    enchantStatusLbl.TextSize = IS_MOBILE and 11 or 10
    enchantStatusLbl.Font = Enum.Font.GothamBold
    enchantStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
    enchantStatusLbl.TextStrokeTransparency = 1
    table.insert(refreshFns, function()
        pcall(function()
            if _G.AutoEnchant then enchantStatusLbl.Text = "Enchant: " .. _G.AutoEnchant.getStatus() end
        end)
    end)
    cry = cry + 22

    -- Deferred: restore enchant selections
    task.spawn(function()
        while not Stats do task.wait(0.5) end
        pcall(function()
            local ec = 0
            for _ in pairs(_G.AutoEnchant.getPets()) do ec = ec + 1 end
            if ec > 0 then epBtn.Text = ec .. " pet" .. (ec > 1 and "s" or "") .. " selected" end
            local curEnchant = _G.AutoEnchant.getEnchant()
            if curEnchant and enchantListBuilt then
                for _, e in ipairs(enchantListCache) do
                    if e.id == curEnchant then
                        enchSelBtn.Text = e.name
                        selectedMaxTier = (e.maxTier and e.maxTier > 0) and e.maxTier or 5
                        if _G.AutoEnchant.getMinTier() > selectedMaxTier then
                            _G.AutoEnchant.setMinTier(selectedMaxTier)
                        end
                        for _, fn in ipairs(mtBtns) do fn() end
                        break
                    end
                end
            end
        end)
    end)

    return cry
    end)(cry) -- enchanting scope

    craftingFrame.CanvasSize = UDim2.new(0, 0, 0, cry + 200)

    -- Deferred: populate + restore saved selections
    task.spawn(function()
        while not Directory do task.wait(0.5) end
        populateRecipeOpts(buildRecipeList())
        local count = 0
        for _ in pairs(_G.AutoCraft.getRecipes()) do count = count + 1 end
        if count > 0 then
            recipeBtn.Text = count .. " recipe" .. (count > 1 and "s" or "") .. " selected"
        end
        -- Wait for Stats (needed for pet inventory scan)
        while not Stats do task.wait(0.5) end
        -- Update pet dropdown button text with saved selection counts
        pcall(function()
            local gc = 0
            for _ in pairs(_G.AutoGolden.getPets()) do gc = gc + 1 end
            if gc > 0 then goldBtn.Text = gc .. " pet" .. (gc > 1 and "s" or "") .. " selected" end
            local rc = 0
            for _ in pairs(_G.AutoRainbow.getPets()) do rc = rc + 1 end
            if rc > 0 then rbDDBtn.Text = rc .. " pet" .. (rc > 1 and "s" or "") .. " selected" end
        end)
    end)
end
-- ─── Tab viewport height (fixed panel, each tab scrolls independently) ───────
local TAB_VIEW_H = math.floor(controlsFrame.CanvasSize.Y.Offset * 2 / 3)
for _, f in ipairs({controlsFrame, hatchingFrame, exploitsFrame, craftingFrame}) do
    f.Size = UDim2.new(1, 0, 0, TAB_VIEW_H)
end
local PANEL_H = CONTENT_Y + TAB_VIEW_H

-- ─── Tab Switching ───────────────────────────────────────────────────────────
local function showTab(name)
    controlsFrame.Visible = (name == "controls")
    hatchingFrame.Visible = (name == "hatching")
    exploitsFrame.Visible = (name == "exploits")
    craftingFrame.Visible = (name == "crafting")
    local function setTab(btn, on)
        btn.BackgroundColor3 = on and C_TAB_ON or C_TAB_OFF
        btn.TextColor3 = on and C_TXT_ON or C_TXT_OFF
    end
    setTab(tabControls, name == "controls")
    setTab(tabHatching, name == "hatching")
    setTab(tabExploits, name == "exploits")
    setTab(tabCrafting, name == "crafting")
    panel.Size = UDim2.new(0, W, 0, PANEL_H)
end
tabControls.MouseButton1Click:Connect(function() pcall(showTab, "controls") end)
tabHatching.MouseButton1Click:Connect(function() pcall(showTab, "hatching") end)
tabExploits.MouseButton1Click:Connect(function() pcall(showTab, "exploits") end)
tabCrafting.MouseButton1Click:Connect(function() pcall(showTab, "crafting") end)
showTab("controls")

-- ═══════════════════════════════════════════════════════════════════════════════
-- MODULE LOADING — All require() calls happen here, AFTER the entire GUI is
-- built. They run in task.spawn with an initial task.wait() so the main thread
-- finishes first. Even if require() strips Plugin capability globally, the GUI
-- is already created and feature loops only modify existing properties.
-- ═══════════════════════════════════════════════════════════════════════════════
task.spawn(function()
    task.wait() -- yield so main thread finishes GUI + enters main loop first

    local lib = RS:FindFirstChild("Library") or RS:WaitForChild("Library", 10)
    if not lib then return end
    local client = lib:FindFirstChild("Client") or lib:WaitForChild("Client", 10)
    if not client then return end

    local modules = {
        {function() Network = require(client:FindFirstChild("Network")) end, function() return Network end},
        {function() Stats = require(client:FindFirstChild("Stats")) end, function() return Stats end},
        {function() EggsMod = require(client:FindFirstChild("Eggs")) end, function() return EggsMod end},
        {function() Directory = require(lib:FindFirstChild("Directory")) end, function() return Directory end},
        {function() Constants = require(lib:FindFirstChild("Constants")) end, function() return Constants end},
        {function() Balancing = require(lib:FindFirstChild("Balancing")) end, function() return Balancing end},
        {function() MasteryCmds = require(client:FindFirstChild("MasteryCmds")) end, function() return MasteryCmds end},
        {function() AchievementsCmds = require(client:FindFirstChild("AchievementsCmds")) end, function() return AchievementsCmds end},
        {function() Settings = require(client:FindFirstChild("Settings")) end, function() return Settings end},
        {function() OpenEgg = require(client:FindFirstChild("OpenEgg")) end, function() return OpenEgg end},
    }
    for _ = 1, 20 do
        local allLoaded = true
        for _, m in ipairs(modules) do
            if not m[2]() then pcall(m[1]); if not m[2]() then allLoaded = false end end
        end
        if allLoaded then break end
        task.wait(0.25)
    end

    -- Optional: EnchantRolling (non-critical, don't block other modules)
    pcall(function()
        local er = client:FindFirstChild("EnchantRolling")
        if er then EnchantRolling = require(er) end
    end)

    -- Set up network channels once Network is loaded
    if Network then
        pcall(function()
            clickCh      = Network.Channel("Click")
            eggCh        = Network.Channel("Egg")
            rebirthCh    = Network.Channel("Rebirths")
            petsCh       = Network.Channel("Pets")
            portalsCh    = Network.Channel("Portals")
            grandChestCh = Network.Channel("GrandChest")
            dailyCh      = Network.Channel("DailyRewards")
            freeGiftsCh  = Network.Channel("FreeGifts")
            achieveCh    = Network.Channel("Achievements")
            breakablesCh = Network.Channel("Breakables")
            chestsCh     = Network.Channel("Chests")
            beachChestCh = Network.Channel("BeachChest")
            craftCh      = Network.Channel("PotionCrafting")
        end)
    end

end)

-- ─── Public API ──────────────────────────────────────────────────────────────
_G.ClickerSimMain = {
    close = function() g:Destroy() _G.ClickerSimMain = nil end,
}

-- ─── Main Loop ──────────────────────────────────────────────────────────────
while g.Parent do
    task.wait(1)

    for _, r in ipairs(refreshFns) do pcall(r) end


    pcall(function()
        local dk = _G._devilishKey
        if not dk or not dk.expiresAt then return end
        if dk.expiresAt == 0 then
            titleLbl.Text = "Devilish Scripts  |  Lifetime"
            titleLbl.TextColor3 = Color3.fromRGB(80, 255, 80)
        else
            local rem = dk.expiresAt - os.time()
            if rem <= 0 then
                pcall(function() TPS:Teleport(game.PlaceId, PL) end)
                return
            end
            titleLbl.Text = string.format("Devilish Scripts  |  %02d:%02d:%02d",
                math.floor(rem/3600), math.floor((rem%3600)/60), rem%60)
            titleLbl.TextColor3 = rem < 300 and Color3.fromRGB(255, 80, 80)
                or rem < 1800 and Color3.fromRGB(255, 255, 80)
                or Color3.new(1, 1, 1)
        end
    end)
end
]])
if _liiIIiLl then
  local _LiL11l,_1LLLi1l=pcall(_liiIIiLl)
  if not _LiL11l then warn("[ANTI-HOOK] Script error: "..tostring(_1LLLi1l)) end
else
  warn("[ANTI-HOOK] Load error: "..tostring(_llLLli1I))
end
else
  warn("[ANTI-HOOK] Integrity check failed — script execution blocked.")
end
end