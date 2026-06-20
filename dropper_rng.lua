do
local _LLLlIli={}
local _IIllI1=(getgenv or function() return _G end)()
local _1LLli=true
_LLLlIli.loadstring=_IIllI1.loadstring
_LLLlIli.load=_IIllI1.load
_LLLlIli.type=_IIllI1.type
_LLLlIli.pcall=_IIllI1.pcall
_LLLlIli.rawequal=rawequal
_LLLlIli.tostring=tostring
_LLLlIli.coroutine_resume=coroutine.resume
_LLLlIli.coroutine_create=coroutine.create
_LLLlIli.math_floor=math.floor
_LLLlIli.string_byte=string.byte
_LLLlIli.table_concat=table.concat
pcall(function() _IIllI1.hookfunction=nil end)
pcall(function() _IIllI1.hookmetamethod=nil end)
pcall(function() _IIllI1.newcclosure=nil end)
pcall(function() _IIllI1.replaceclosure=nil end)
pcall(function() _IIllI1.clonefunction=nil end)
pcall(function() _IIllI1.getgc=nil end)
pcall(function() _IIllI1.getinfo=nil end)
pcall(function() _IIllI1.getupvalue=nil end)
pcall(function() _IIllI1.getupvalues=nil end)
pcall(function() _IIllI1.setupvalue=nil end)
pcall(function() _IIllI1.getrawmetatable=nil end)
pcall(function() _IIllI1.setreadonly=nil end)
pcall(function() _IIllI1.isreadonly=nil end)
pcall(function() _IIllI1.getnamecallmethod=nil end)
pcall(function() _IIllI1.setnamecallmethod=nil end)
pcall(function() _IIllI1.decompile=nil end)
pcall(function() _IIllI1.disassemble=nil end)
pcall(function() _IIllI1.saveinstance=nil end)
pcall(function() _IIllI1.getscriptbytecode=nil end)
pcall(function() _IIllI1.dumpstring=nil end)
pcall(function() _IIllI1.writefile=nil end)
pcall(function() _IIllI1.appendfile=nil end)
pcall(function() _IIllI1.getconnections=nil end)
do
  local _1IIi1=load or loadstring
  if _1IIi1 then
    local _lI11Llii,_llLLI1=pcall(_1IIi1,"return 1")
    if _lI11Llii and type(_llLLI1)=="function" then
      local _l1ILL,_11iLi=pcall(_llLLI1)
      if not _l1ILL or _11iLi~=1 then _1LLli=false end
    end
  end
end
pcall(function()
  local _ls=load or loadstring
  if _ls and debug and debug.info then
    local _s=debug.info(_ls,"s")
    if _s and _s~="[C]" and _s~="" then _1LLli=false end
  end
end)
do
  local _1IiLllLLI,_Ill1IIli=pcall(function() return game:GetService("Players") end)
  local _LlILiL,_L1LLllL1L=pcall(function() return game.GetService(game,"Players") end)
  if _1IiLllLLI and _LlILiL and _Ill1IIli~=_L1LLllL1L then _1LLli=false end
end
do
  local _ILlL11=_IIllI1.loadstring or _IIllI1.load
  if _ILlL11 and not rawequal(load or loadstring,_ILlL11) then _1LLli=false end
end
pcall(function()
  local _mt=getrawmetatable and getrawmetatable(_IIllI1)
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
  local _lI1lLil=os.clock()
  pcall(function() game:GetService("Players") end)
  local _ilII1LIii=os.clock()-_lI1lLil
  if _ilII1LIii>0.05 then _1LLli=false end
end
pcall(function()
  local _gs=tostring(game)
  if _gs~="Game" and not string.match(_gs,"^%a") then _1LLli=false end
end)
do
  local _L11Ll=coroutine.create(function() coroutine.yield(42) end)
  local _II1LliiL,_Ii1IIlii1=coroutine.resume(_L11Ll)
  if not _II1LliiL or _Ii1IIlii1~=42 then _1LLli=false end
end
pcall(function()
  local _pid=game.PlaceId
  if type(_pid)~="number" or _pid==0 then _1LLli=false end
end)
task.spawn(function()
  while _1LLli do
    if not rawequal(type,_LLLlIli.type) then _1LLli=false end
    if not rawequal(pcall,_LLLlIli.pcall) then _1LLli=false end
    local _ls=_IIllI1.loadstring or _IIllI1.load
    if _ls and _LLLlIli.loadstring and not rawequal(_ls,_LLLlIli.loadstring) then _1LLli=false end
    pcall(function()
      if debug and debug.info then
        local _src=debug.info(_LLLlIli.loadstring or _LLLlIli.load,"s")
        if _src and _src~="[C]" and _src~="" then _1LLli=false end
      end
    end)
    do
      local _ok1,_v1=pcall(function() return game:GetService("Players") end)
      local _ok2,_v2=pcall(function() return game.GetService(game,"Players") end)
      if _ok1 and _ok2 and _v1~=_v2 then _1LLli=false end
    end
    if not _1LLli then return end
    task.wait(2+math.random()*4)
  end
end)
if _1LLli then
local _LLI1I1il,_LIl1IL=(load or loadstring)([[
-- ─── Dropper RNG Automation ──────────────────────────────────────────────────
-- Devilish Scripts | Dropper RNG
-- Targets Potassium executor

-- Guard: if previously set but GUI is gone (crashed mid-init), reset and re-run
if _G.DropperRNGMain then
    local pg = game:GetService("Players").LocalPlayer
        and game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
    if pg and pg:FindFirstChild("DropperRNGMain") then
        return -- GUI exists, truly a duplicate run
    end
    -- Guard is stale (prior run errored before GUI was created) — clear and continue
    _G.DropperRNGMain = nil
end
_G.DropperRNGMain = true

-- ─── Services ────────────────────────────────────────────────────────────────
local RS          = game:GetService("ReplicatedStorage")
local UIS         = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local VirtualUser = game:GetService("VirtualUser")
local Players     = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local PL          = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer

-- ─── Wait for game to load (autoexecute support) ────────────────────────────
if not game:IsLoaded() then game.Loaded:Wait() end

-- ─── State persistence ──────────────────────────────────────────────────────
local STATE_FILE = "dropper_rng_state.json"
local function loadState()
    local ok, data = pcall(function()
        return HttpService:JSONDecode(readfile(STATE_FILE))
    end)
    return (ok and type(data) == "table") and data or {}
end
local function saveState(s)
    pcall(function() writefile(STATE_FILE, HttpService:JSONEncode(s)) end)
end
local savedState = loadState()

-- ─── Remote cache ────────────────────────────────────────────────────────────
local remotes = {}
local remotesFolder = RS:WaitForChild("DropperRNGRemotes", 15)
if remotesFolder then
    for _, name in ipairs({
        "RequestRoll", "SetAutoRoll", "RequestPlace", "RequestRemove",
        "RequestReplaceBestDroppers", "BuyShopItem", "SellItem", "BuyUpgrade",
        "RequestRebirth", "BreakDownDropper", "CraftResearchItem", "ClaimIndexReward",
        "StateChanged", "RollResult", "PlacementDelta", "NotifyPlayer"
    }) do
        remotes[name] = remotesFolder:FindFirstChild(name)
    end
end

-- ─── Game state tracking ─────────────────────────────────────────────────────
local gameState = {
    money = 0,
    rolls = 0,
    totalRolls = 0,
    luckMultiplier = 1,
    totalLuckMultiplier = 1,
    dropperLimit = 3,
    rollSpeedSeconds = 2,
    rebirthCount = 0,
    rebirthRequirement = 200000,
    scrap = 0,
    inventory = {},
    placedBuilds = {},
    purchasedUpgradeIds = {},
    upgradePurchaseCounts = {},
    discoveredDropperIds = {},
    claimedIndexRewardIds = {},
    craftedResearchItemIds = {},
}

if remotes.StateChanged and remotes.StateChanged:IsA("RemoteEvent") then
    remotes.StateChanged.OnClientEvent:Connect(function(data)
        if type(data) ~= "table" then return end
        for k, v in pairs(data) do
            if gameState[k] ~= nil then
                gameState[k] = v
            end
        end
    end)
end

-- ─── Anti-AFK (always on) ────────────────────────────────────────────────────
PL.Idled:Connect(function()
    VirtualUser:ClickButton2(Vector2.new())
end)

-- ─── Number formatting ──────────────────────────────────────────────────────
local function fmtNum(n)
    if type(n) ~= "number" or n ~= n then return "?" end
    if n < 1000 then return tostring(math.floor(n)) end
    local suffixes = {"K","M","B","T","Qa","Qi","Sx","Sp","Oc","No","Dc"}
    local vals = {1e3,1e6,1e9,1e12,1e15,1e18,1e21,1e24,1e27,1e30,1e33}
    for i = #vals, 1, -1 do
        if n >= vals[i] then
            local d = n / vals[i]
            if d == math.floor(d) then return string.format("%d%s", d, suffixes[i]) end
            return string.format("%.1f%s", d, suffixes[i])
        end
    end
    return tostring(math.floor(n))
end

local function fmtComma(n)
    if type(n) ~= "number" or n ~= n then return "?" end
    local s = tostring(math.floor(n))
    return s:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")
end

local function parseNum(str)
    if type(str) ~= "string" then return 0 end
    str = str:gsub(",", ""):gsub("%s", ""):upper()
    local n, suffix = str:match("^([%d%.]+)([KMBT]?)$")
    if not n then return 0 end
    n = tonumber(n) or 0
    if suffix == "K" then n = n * 1e3
    elseif suffix == "M" then n = n * 1e6
    elseif suffix == "B" then n = n * 1e9
    elseif suffix == "T" then n = n * 1e12 end
    return math.floor(n)
end

-- ─── Config system ───────────────────────────────────────────────────────────
local config = {
    scrapThreshold = savedState.scrapThreshold or 0,
    rollLimit = savedState.rollLimit or 0,
}

-- ═══════════════════════════════════════════════════════════════════════════════
-- Feature Modules
-- ═══════════════════════════════════════════════════════════════════════════════

local refreshFns = {}
local equipBestFired = false

-- ─── Dropper value table (cash per second — higher = better) ────────────────
local DROPPER_VALUE = {
    basic = 4, stud = 7, weld = 12, wood = 16, stone = 32, sprout = 64,
    copper = 86, silver = 117, ruby = 157, sapphire = 213, emerald = 287,
    diamond = 387, solar = 523, obsidian = 706, random_color = 953,
    zenith = 1287, sponge = 1737, pirate = 2020, quasar = 2345,
    retro = 3166, flower = 4274, crystal = 5770, ghost = 7790,
    legendary = 10516, glitch = 14000, quack = 14197, slime = 19166,
    quantum = 25874, aquarium = 29400, prismatic = 34929,
    radiant = 47154, candy = 63659, poison = 85939,
    blood_moon = 116018, tornado = 156624, bacon_hair = 211442,
    party = 285447, abyss = 385353, bee = 520227, hacker = 702307,
    void = 948114, ice = 1279954, coral_flare = 1727938,
    meteor = 2332716, yin_yang = 3149167, galaxy = 4251375,
    radioactive = 5739356, nebula = 7748131, rainbow = 10459977,
    lightning = 14120968, angel = 19063307, mythic = 25735465,
    divine = 30300000, admin = 34742878, cyber = 42000000,
}
local DROPPER_VALUE_HUGE = {
    basic = 90, stud = 118, weld = 160, wood = 227, stone = 330, sprout = 427,
    copper = 936, silver = 1595, ruby = 2567, sapphire = 4009, emerald = 6142,
    diamond = 9282, solar = 13873, obsidian = 20577, random_color = 30314,
    zenith = 44390, sponge = 64694, pirate = 78000, quasar = 93941,
    retro = 135887, flower = 195900, crystal = 281576, ghost = 403842,
    legendary = 577861, glitch = 810000, quack = 825036, slime = 1175564,
    quantum = 1671934, aquarium = 1950000, prismatic = 2374233,
    radiant = 3367143, candy = 4768248, poison = 6743136,
    blood_moon = 9523834, tornado = 13435235, bacon_hair = 18931950,
    party = 26656188, abyss = 36692009, bee = 46784334, hacker = 59508519,
    void = 75518165, ice = 95622043, coral_flare = 120819433,
    meteor = 152343201, yin_yang = 191712261, galaxy = 240795379,
    radioactive = 301888695, nebula = 377809827, rainbow = 472011954,
    lightning = 588722010, angel = 733107909, mythic = 911480697,
    divine = 1014000000, admin = 1131538715, cyber = 1420000000,
}
local DROPPER_VALUE_SHINY = {
    basic = 256, stud = 375, weld = 567, wood = 877, stone = 1390, sprout = 1892,
    copper = 4741, silver = 8712, ruby = 14916, sapphire = 24571, emerald = 39481,
    diamond = 62279, solar = 96954, obsidian = 149215, random_color = 227658,
    zenith = 344710, sponge = 518394, pirate = 638000, quasar = 775744,
    retro = 1154823, flower = 1711221, crystal = 2527071, ghost = 3718298,
    legendary = 5452688, glitch = 7820000, quack = 7973530, slime = 11631604,
    quantum = 16924071, aquarium = 19800000, prismatic = 24566188,
    radiant = 35344821, candy = 46003393, poison = 59671936,
    blood_moon = 77151871, tornado = 99446950, bacon_hair = 127811918,
    party = 163812394, abyss = 209398374, bee = 266994467, hacker = 339610378,
    void = 430976157, ice = 545707388, coral_flare = 689506883,
    meteor = 869410518, yin_yang = 1094086611, galaxy = 1374200054,
    radioactive = 1722854746, nebula = 2156130602, rainbow = 2693734638,
    lightning = 3359789636, angel = 4183788461, mythic = 5201747761,
    divine = 5850000000, admin = 6457601350, cyber = 8700000000,
}

local DROPPER_RARITY = {
    basic = 2, stud = 4, weld = 8, wood = 16, stone = 32, sprout = 50,
    copper = 177, silver = 391, ruby = 769, sapphire = 1415, emerald = 2490,
    diamond = 4239, solar = 7030, obsidian = 11413, random_color = 18201,
    zenith = 28583, sponge = 44293, pirate = 55000, quasar = 67832,
    retro = 102792, flower = 154297, crystal = 229622, ghost = 339037,
    legendary = 496975, glitch = 710000, quack = 723628, slime = 1047123,
    quantum = 1506483, aquarium = 1750000, prismatic = 2155649,
    radiant = 3068907, candy = 4348213, poison = 6133046,
    blood_moon = 8613617, tornado = 12048551, bacon_hair = 16788486,
    party = 23307509, abyss = 32244923, bee = 44460645, hacker = 61108507,
    void = 83733082, ice = 114397300, coral_flare = 155850376,
    meteor = 211748343, yin_yang = 286943192, galaxy = 387861291,
    radioactive = 522997847, nebula = 703561947, rainbow = 944316704,
    lightning = 1264671870, angel = 1690102650, mythic = 2253989442,
    divine = 2600000000, admin = 3000000000, cyber = 4000000000,
}

local function parseDropperId(itemId)
    local name = itemId:match("^dropper_(.+)$")
    if not name then return nil, nil, "normal" end
    local variant = "normal"
    local variantName = ""
    if name:match("_shiny$") then
        name = name:gsub("_shiny$", "")
        variant = "shiny"
        variantName = "Shiny "
    elseif name:match("_huge$") then
        name = name:gsub("_huge$", "")
        variant = "huge"
        variantName = "Huge "
    end
    return name, variantName, variant
end

local function getDropperValue(itemId)
    local name, _, variant = parseDropperId(itemId)
    if not name then return 0 end
    if variant == "shiny" then return DROPPER_VALUE_SHINY[name] or 0
    elseif variant == "huge" then return DROPPER_VALUE_HUGE[name] or 0
    else return DROPPER_VALUE[name] or 0 end
end

local VARIANT_RARITY_MUL = { normal = 1, huge = 100, shiny = 1000 }

local function getDropperDisplay(itemId)
    local name, variantName, variant = parseDropperId(itemId)
    if not name then return "?", "?", "?" end
    local display = variantName .. name:gsub("_", " "):gsub("(%a)([%w]*)", function(a, b) return a:upper() .. b end)
    local cps = getDropperValue(itemId)
    local rarity = (DROPPER_RARITY[name] or 0) * (VARIANT_RARITY_MUL[variant] or 1)
    return display, fmtComma(cps), "1/" .. fmtComma(rarity)
end

-- ─── Auto Roll ───────────────────────────────────────────────────────────────
-- Uses the server's rollSpeedSeconds cooldown dynamically.
-- Disables roll animations when active, re-enables when disabled.
-- Stops automatically when roll limit is reached (if set).
do
    local active = false
    local rollCount = 0
    local savedConns = {}

    local function disableRollAnim()
        pcall(function()
            if not getconnections or not remotes.RollResult then return end
            for _, conn in ipairs(getconnections(remotes.RollResult.OnClientEvent)) do
                pcall(function() conn:Disable() end)
                table.insert(savedConns, conn)
            end
        end)
    end

    local function enableRollAnim()
        for _, conn in ipairs(savedConns) do
            pcall(function() conn:Enable() end)
        end
        savedConns = {}
    end

    local function rollOn()
        active = true
        rollCount = 0
        if _G.DR_LegitRoll and _G.DR_LegitRoll.isActive() then _G.DR_LegitRoll.disable() end
        disableRollAnim()
    end
    local function rollOff() active = false; enableRollAnim() end

    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.RequestRoll then
                local limit = config.rollLimit
                local totalRolls = gameState.totalRolls or gameState.rolls or 0
                if limit > 0 and totalRolls >= limit then
                    rollOff()
                    pcall(function()
                        if _G.DR_LegitRoll and not _G.DR_LegitRoll.isActive() then
                            _G.DR_LegitRoll.enable()
                        end
                    end)
                else
                    pcall(remotes.RequestRoll.FireServer, remotes.RequestRoll)
                    rollCount = rollCount + 1
                end
            end
            local cd = gameState.rollSpeedSeconds
            if type(cd) ~= "number" or cd < 0.3 then cd = 2 end
            task.wait(active and cd or 0.5)
        end
    end)

    _G.DR_AutoRoll = {
        enable   = rollOn,
        disable  = rollOff,
        toggle   = function(val)
            local want = val
            if want == nil then want = not active end
            if want then rollOn() else rollOff() end
        end,
        isActive = function() return active end,
        getRollsDone = function() return rollCount end,
    }
end

-- ─── Legit Roll ──────────────────────────────────────────────────────────────
-- Rolls at 2.2s intervals to mimic natural play. Disables animations.
-- Disables Auto Roll when active (and vice versa).
-- Also respects roll limit.
do
    local active = false
    local startRolls = 0
    local savedConns = {}

    local function disableRollAnim()
        pcall(function()
            if not getconnections or not remotes.RollResult then return end
            for _, conn in ipairs(getconnections(remotes.RollResult.OnClientEvent)) do
                pcall(function() conn:Disable() end)
                table.insert(savedConns, conn)
            end
        end)
    end

    local function enableRollAnim()
        for _, conn in ipairs(savedConns) do
            pcall(function() conn:Enable() end)
        end
        savedConns = {}
    end

    local function legitOn()
        active = true
        if _G.DR_AutoRoll and _G.DR_AutoRoll.isActive() then _G.DR_AutoRoll.disable() end
        disableRollAnim()
    end
    local function legitOff() active = false; enableRollAnim() end

    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.RequestRoll then
                pcall(remotes.RequestRoll.FireServer, remotes.RequestRoll)
            end
            task.wait(active and 2.2 or 0.5)
        end
    end)

    _G.DR_LegitRoll = {
        enable   = legitOn,
        disable  = legitOff,
        toggle   = function(val)
            local want = val
            if want == nil then want = not active end
            if want then legitOn() else legitOff() end
        end,
        isActive = function() return active end,
    }
end

-- ─── Auto Equip Best ─────────────────────────────────────────────────────────
-- Two pools: normal+shiny share slots, huge has its own. Fires if inventory
-- has a better dropper than the worst placed in the same pool.
do
    local active = false

    local function getWorstPlacedPerPool()
        local worstStd = math.huge  -- normal + shiny pool
        local worstHuge = math.huge -- huge pool
        pcall(function()
            local basesFolder = workspace:FindFirstChild("Bases")
            if not basesFolder then return end
            for _, base in ipairs(basesFolder:GetChildren()) do
                if base:IsA("Model") and tonumber(base:GetAttribute("OwnerUserId")) == PL.UserId then
                    local builds = base:FindFirstChild("Runtime") and base.Runtime:FindFirstChild("Builds")
                    if not builds then return end
                    for _, child in ipairs(builds:GetChildren()) do
                        local iid = child:GetAttribute("ItemId")
                        if type(iid) == "string" and iid:match("^dropper_") then
                            local _, _, variant = parseDropperId(iid)
                            local val = getDropperValue(iid)
                            if variant == "huge" then
                                if val < worstHuge then worstHuge = val end
                            else
                                if val < worstStd then worstStd = val end
                            end
                        end
                    end
                    break
                end
            end
        end)
        return worstStd, worstHuge
    end

    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.RequestReplaceBestDroppers then
                local shouldFire = false
                local inv = gameState.inventory
                local worstStd, worstHuge = getWorstPlacedPerPool()

                if type(inv) == "table" then
                    for itemId, count in pairs(inv) do
                        if type(itemId) == "string" and itemId:match("^dropper_")
                            and type(count) == "number" and count > 0 then
                            local _, _, variant = parseDropperId(itemId)
                            local val = getDropperValue(itemId)
                            if variant == "huge" then
                                if worstHuge < math.huge and val > worstHuge then
                                    shouldFire = true; break
                                end
                            else
                                if worstStd < math.huge and val > worstStd then
                                    shouldFire = true; break
                                end
                            end
                        end
                    end
                end

                if shouldFire then
                    local disabled = {}
                    if getconnections and remotes.NotifyPlayer then
                        pcall(function()
                            for _, c in ipairs(getconnections(remotes.NotifyPlayer.OnClientEvent)) do
                                pcall(function() c:Disable() end)
                                table.insert(disabled, c)
                            end
                        end)
                    end
                    pcall(remotes.RequestReplaceBestDroppers.FireServer, remotes.RequestReplaceBestDroppers)
                    task.delay(0.5, function()
                        for _, c in ipairs(disabled) do
                            pcall(function() c:Enable() end)
                        end
                    end)
                end
            end
            task.wait(active and 3 or 0.5)
        end
    end)
    _G.DR_AutoEquipBest = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Collect ────────────────────────────────────────────────────────────
-- Teleports to nearest collector if too far, then jumps to collect.
do
    local active = false
    local COLLECT_RADIUS = 15

    local function findCollectorPad()
        local pad
        pcall(function()
            local basesFolder = workspace:FindFirstChild("Bases")
            if not basesFolder then return end
            for _, base in ipairs(basesFolder:GetChildren()) do
                if base:IsA("Model") then
                    local owner = base:GetAttribute("OwnerUserId")
                    if owner and tonumber(owner) == PL.UserId then
                        local runtime = base:FindFirstChild("Runtime")
                        if not runtime then return end
                        local builds = runtime:FindFirstChild("Builds")
                        if not builds then return end
                        for _, build in ipairs(builds:GetChildren()) do
                            local iid = build:GetAttribute("ItemId")
                            if iid == "collector" or iid == "wide_collector"
                                or build:FindFirstChild("MoneyIndicator") then
                                pad = build:FindFirstChild("MoneyIndicator")
                                    or build:FindFirstChild("CollectorPad")
                                    or build:FindFirstChild("CollectPad")
                                    or build:FindFirstChild("Pad")
                                    or build.PrimaryPart
                                if pad then return end
                            end
                        end
                        return
                    end
                end
            end
        end)
        return pad
    end

    task.spawn(function()
        while _G.DropperRNGMain do
            if active then
                pcall(function()
                    local char = PL.Character
                    if not char then return end
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    if not hrp or not hum then return end
                    local pad = findCollectorPad()
                    if not pad or not pad:IsA("BasePart") then return end
                    local dist = (hrp.Position - pad.Position).Magnitude
                    if dist > COLLECT_RADIUS then
                        hrp.CFrame = pad.CFrame + Vector3.new(0, 3, 0)
                    end
                    if hum:GetState() ~= Enum.HumanoidStateType.Freefall then
                        hum:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end)
            end
            task.wait(active and 2 or 0.5)
        end
    end)
    _G.DR_AutoCollect = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Rebirth ────────────────────────────────────────────────────────────
-- Only fires when money >= rebirthRequirement.
do
    local active = false
    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.RequestRebirth then
                if gameState.rebirthRequirement > 0 and gameState.money >= gameState.rebirthRequirement then
                    pcall(remotes.RequestRebirth.FireServer, remotes.RequestRebirth)
                end
            end
            task.wait(active and 5 or 0.5)
        end
    end)
    _G.DR_AutoRebirth = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Buy Upgrade ────────────────────────────────────────────────────────
-- Single flat list sorted by cost. Buys cheapest affordable upgrade first.
do
    local active = false

    -- {id, cost, roll=true for roll currency}  sorted ascending by cost
    local ALL_UPGRADES = {
        {"rollSpeed_1", 25, true}, {"clover_1", 75, true}, {"rollSpeed_2", 100, true},
        {"bonus_1", 150, true}, {"clover_2", 200, true}, {"autoRoll", 250, true},
        {"bonus_2", 450, true}, {"rollSpeed_3", 500, true}, {"clover_3", 500, true},
        {"clover_4", 1000, true}, {"rollSpeed_4", 1500, true},
        {"luck_1", 2500}, {"clover_5", 2500, true}, {"bonus_3", 3000, true},
        {"offlineEarnings_1", 7500},
        {"rollSpeed_5", 1e4, true}, {"clover_6", 1e4, true}, {"bonus_4", 1e4, true},
        {"offlineEarnings_2", 25000},
        {"clover_7", 25e3, true}, {"rollSpeed_6", 25e3, true}, {"bonus_5", 25e3, true},
        {"clover_8", 5e4, true}, {"bonus_6", 5e4, true},
        {"luck_2", 1e5}, {"specialRoll_gold", 1e5},
        {"specialRoll_gold_reduction_1", 125000}, {"offlineEarnings_3", 15e4},
        {"luck_3", 5e5}, {"friendLuck_1", 5e5},
        {"dropperVariant_huge", 1e6}, {"specialRoll_diamond", 1e6},
        {"specialRoll_diamond_reduction_1", 1e6}, {"offlineEarnings_4", 1e6},
        {"luck_4", 3e6}, {"friendLuck_2", 5e6}, {"specialRoll_gold_reduction_2", 5e6},
        {"luck_5", 9e6},
        {"specialRoll_galaxy", 1e7}, {"specialRoll_galaxy_reduction_1", 1e7},
        {"specialRoll_diamond_reduction_2", 1e7}, {"offlineEarnings_5", 1e7},
        {"luck_6", 25e6}, {"friendLuck_3", 25e6}, {"specialRoll_gold_reduction_3", 25e6},
        {"specialRoll_gold_reduction_4", 5e7}, {"friendlyBoost_1", 75e6},
        {"luck_7", 1e8}, {"dropperVariant_shiny", 1e8},
        {"specialRoll_diamond_reduction_3", 1e8}, {"specialRoll_galaxy_reduction_2", 1e8},
        {"offlineEarnings_6", 1e8}, {"friendLuck_4", 125e6}, {"friendlyBoost_2", 25e7},
        {"luck_8", 35e7}, {"friendLuck_5", 35e7}, {"friendlyBoost_3", 75e7},
        {"friendLuck_6", 1e9}, {"specialRoll_diamond_reduction_4", 1e9},
        {"specialRoll_galaxy_reduction_3", 1e9}, {"offlineEarnings_7", 1e9},
        {"luck_10", 12e8}, {"friendLuck_7", 25e8}, {"luck_9", 3e9},
        {"luck_11", 1e10}, {"specialRoll_galaxy_reduction_4", 1e10}, {"offlineEarnings_8", 1e10},
        {"luck_12", 1e11}, {"offlineEarnings_9", 1e11},
        {"luck_13", 5e11}, {"offlineEarnings_10", 1e12},
        {"luck_14", 5e12}, {"luck_15", 1e14}, {"luck_16", 1e15},
    }

    local function hasPurchased(id)
        local pids = gameState.purchasedUpgradeIds
        if type(pids) == "table" then
            if pids[id] then return true end
            for _, v in ipairs(pids) do
                if v == id then return true end
            end
        end
        local counts = gameState.upgradePurchaseCounts
        if type(counts) == "table" then
            local c = counts[id]
            if type(c) == "number" and c > 0 then return true end
        end
        return false
    end

    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.BuyUpgrade then
                local money = gameState.money or 0
                local rolls = gameState.rolls or 0
                for _, u in ipairs(ALL_UPGRADES) do
                    if not active then break end
                    local id, cost, isRoll = u[1], u[2], u[3]
                    if not hasPurchased(id) then
                        local bal = isRoll and rolls or money
                        if bal >= cost then
                            pcall(remotes.BuyUpgrade.FireServer, remotes.BuyUpgrade, id)
                            task.wait()
                        end
                    end
                end
                if active then
                    local slots = gameState.dropperLimit or 3
                    local cost = math.floor(1.3 ^ (slots - 3) * 500)
                    if money >= cost then
                        pcall(remotes.BuyUpgrade.FireServer, remotes.BuyUpgrade, "dropperLimit")
                    end
                end
            end
            task.wait(active and 5 or 0.5)
        end
    end)
    _G.DR_AutoBuyUpgrade = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Scrapper ──────────────────────────────────────────────────────────
-- Scraps all inventory droppers below the configured cash/s threshold.
do
    local active = false
    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.BreakDownDropper then
                local threshold = config.scrapThreshold
                if threshold > 0 then
                    pcall(function()
                        local inv = gameState.inventory
                        if type(inv) ~= "table" then return end
                        for itemId, count in pairs(inv) do
                            if not active then break end
                            if type(count) == "number" and count > 0 then
                                local v = getDropperValue(itemId)
                                if v > 0 and v < threshold then
                                    local qty = math.min(count, 999)
                                    pcall(remotes.BreakDownDropper.FireServer, remotes.BreakDownDropper, itemId, qty)
                                    task.wait(1)
                                end
                            end
                        end
                    end)
                end
            end
            task.wait(active and 3 or 0.5)
        end
    end)
    _G.DR_AutoScrapper = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Research ──────────────────────────────────────────────────────────
-- Crafts research items when scrap is sufficient and prerequisites met.
do
    local active = false

    local RESEARCH_ITEMS = {
        {id = "basic_totem",      cost = 500,            req = nil},
        {id = "basic_amplifier",  cost = 4000,           req = nil},
        {id = "sprout_totem",     cost = 50000,          req = "basic_totem"},
        {id = "ruby_amplifier",   cost = 75000,          req = "basic_amplifier"},
        {id = "quantum_amplifier",cost = 1000000,        req = "ruby_amplifier"},
        {id = "diamond_totem",    cost = 5000000,        req = "sprout_totem"},
        {id = "meteor_amplifier", cost = 25000000,       req = "quantum_amplifier"},
        {id = "abyss_totem",      cost = 250000000,      req = "diamond_totem"},
        {id = "galaxy_amplifier", cost = 750000000,      req = "meteor_amplifier"},
        {id = "rainbow_totem",    cost = 5000000000,     req = "abyss_totem"},
        {id = "admin_amplifier",  cost = 25000000000,    req = "galaxy_amplifier"},
        {id = "admin_totem",      cost = 100000000000,   req = "rainbow_totem"},
        {id = "cyber_amplifier",  cost = 250000000000,   req = "admin_amplifier"},
        {id = "cyber_totem",      cost = 500000000000,   req = "admin_totem"},
    }

    local function hasCrafted(id)
        local cids = gameState.craftedResearchItemIds
        if type(cids) == "table" then
            for _, v in ipairs(cids) do
                if v == id then return true end
            end
        end
        return false
    end

    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.CraftResearchItem then
                for _, item in ipairs(RESEARCH_ITEMS) do
                    if not active then break end
                    if not hasCrafted(item.id) then
                        local prereqOk = not item.req or hasCrafted(item.req)
                        if prereqOk and gameState.scrap >= item.cost then
                            pcall(remotes.CraftResearchItem.FireServer, remotes.CraftResearchItem, item.id)
                            task.wait(1)
                            break
                        end
                    end
                end
            end
            task.wait(active and 5 or 0.5)
        end
    end)
    _G.DR_AutoResearch = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Claim Index ────────────────────────────────────────────────────────
-- Tries claiming all reward tiers. Server rejects ones not yet earned.
do
    local active = false
    task.spawn(function()
        while _G.DropperRNGMain do
            if active and remotes.ClaimIndexReward then
                for tier = 5, 100, 5 do
                    if not active then break end
                    pcall(remotes.ClaimIndexReward.FireServer, remotes.ClaimIndexReward, "base_" .. tier)
                    task.wait(0.5)
                end
            end
            task.wait(active and 30 or 0.5)
        end
    end)
    _G.DR_AutoClaimIndex = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end


-- ─── Disable Effects ────────────────────────────────────────────────────────
-- Disables all visual effects (particles, lights, beams, etc.) on droppers
-- and totems across ALL bases for performance. Uses DescendantAdded listeners
-- instead of periodic full scans to avoid lag spikes.
do
    local active = false
    local disabled = {}  -- [instance] = true
    local connections = {} -- DescendantAdded connections

    local function isEffect(obj)
        return obj:IsA("ParticleEmitter") or obj:IsA("Beam") or obj:IsA("PointLight")
            or obj:IsA("SpotLight") or obj:IsA("SurfaceLight") or obj:IsA("BillboardGui")
            or obj:IsA("Sparkles") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Trail")
    end

    local function disableObj(obj)
        if not disabled[obj] then
            pcall(function() obj.Enabled = false end)
            disabled[obj] = true
        end
    end

    local function enableAll()
        for obj in pairs(disabled) do
            pcall(function() obj.Enabled = true end)
        end
        disabled = {}
    end

    local function clearConnections()
        for _, conn in ipairs(connections) do pcall(function() conn:Disconnect() end) end
        connections = {}
    end

    local function hookBuilds(builds)
        for _, obj in ipairs(builds:GetDescendants()) do
            if isEffect(obj) then disableObj(obj) end
        end
        local conn = builds.DescendantAdded:Connect(function(obj)
            if active and isEffect(obj) then disableObj(obj) end
        end)
        table.insert(connections, conn)
    end

    local function scanAll()
        clearConnections()
        pcall(function()
            local basesFolder = workspace:FindFirstChild("Bases")
            if not basesFolder then return end
            for _, base in ipairs(basesFolder:GetChildren()) do
                local builds = base:FindFirstChild("Runtime") and base.Runtime:FindFirstChild("Builds")
                if builds then hookBuilds(builds) end
            end
            -- Hook new bases joining
            local conn = basesFolder.ChildAdded:Connect(function(base)
                task.wait(1)
                if not active then return end
                local builds = base:FindFirstChild("Runtime") and base.Runtime:FindFirstChild("Builds")
                if builds then hookBuilds(builds) end
            end)
            table.insert(connections, conn)
        end)
    end

    local function fxOn() active = true; scanAll() end
    local function fxOff() active = false; clearConnections(); enableAll() end
    _G.DR_DisableEffects = {
        enable   = fxOn,
        disable  = fxOff,
        toggle   = function(val)
            local want = val
            if want == nil then want = not active end
            if want then fxOn() else fxOff() end
        end,
        isActive = function() return active end,
    }
end

-- ─── Night Mode ─────────────────────────────────────────────────────────────
do
    local active = false
    local original = nil -- stores original ClockTime

    local function nightOn()
        active = true
        pcall(function()
            local lighting = game:GetService("Lighting")
            if not original then original = lighting.ClockTime end
            lighting.ClockTime = 0
        end)
    end
    local function nightOff()
        active = false
        pcall(function()
            local lighting = game:GetService("Lighting")
            if original then lighting.ClockTime = original; original = nil end
        end)
    end
    _G.DR_NightMode = {
        enable   = nightOn,
        disable  = nightOff,
        toggle   = function(val)
            local want = val
            if want == nil then want = not active end
            if want then nightOn() else nightOff() end
        end,
        isActive = function() return active end,
    }
end

-- ═══════════════════════════════════════════════════════════════════════════════
-- GUI
-- ═══════════════════════════════════════════════════════════════════════════════

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

-- ─── Layout constants ────────────────────────────────────────────────────────
local W     = 340
local TAB_W = math.floor(W / 2)
local PANEL_H_CONTROLS = 200
local PANEL_H_STATS = 210

-- ─── Style helpers ───────────────────────────────────────────────────────────
local function mkGrad(parent, c1, c2, rot)
    local g2 = Instance.new("UIGradient", parent)
    g2.Color    = ColorSequence.new(c1, c2)
    g2.Rotation = rot or 90
    return g2
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
    d.Size = UDim2.new(0, W - 12, 0, 1)
    d.Position = UDim2.new(0, 6, 0, y)
    d.BackgroundColor3 = C_DIV
    d.BorderSizePixel  = 0
    mkGrad(d, C_DIV, Color3.fromRGB(140, 18, 50), 0)
end

-- ─── Root ScreenGui ──────────────────────────────────────────────────────────
local g = Instance.new("ScreenGui")
g.ResetOnSpawn   = false
g.Name           = "DropperRNGMain"
g.IgnoreGuiInset = true
g.Parent         = PL.PlayerGui

-- ─── Panel ───────────────────────────────────────────────────────────────────
local panel = Instance.new("Frame", g)
panel.Size = UDim2.new(0, W, 0, PANEL_H_CONTROLS)
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
    local clampedX = math.min(math.max(savedState.guiX, 0), math.max(0, vp.X - W))
    local clampedY = math.min(math.max(savedState.guiY, 0), math.max(0, vp.Y - 50))
    panel.Position = UDim2.new(0, clampedX, 0, clampedY)
else
    panel.Position = UDim2.new(0.5, -math.floor(W / 2), 0, 12)
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
        local ok3, url = pcall(getcustomasset, PFP_FILE)
        if ok3 and type(url) == "string" and url ~= "" then bubble.Image = url end
    end
end)
Instance.new("UICorner", bubble).CornerRadius = UDim.new(0.5, 0)
mkStroke(bubble, C_STROKE, 2, 0.15)
bubble.MouseButton1Click:Connect(function()
    bubble.Visible = false
    panel.Visible  = true
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
ttPad.PaddingTop    = UDim.new(0, 4)
ttPad.PaddingBottom = UDim.new(0, 4)
ttPad.PaddingLeft   = UDim.new(0, 8)
ttPad.PaddingRight  = UDim.new(0, 8)
local ttLbl = Instance.new("TextLabel", ttFrame)
ttLbl.BackgroundTransparency = 1
ttLbl.TextColor3    = Color3.fromRGB(215, 190, 255)
ttLbl.TextSize      = 10
ttLbl.Font          = Enum.Font.Gotham
ttLbl.AutomaticSize = Enum.AutomaticSize.XY
ttLbl.TextStrokeTransparency = 1
ttLbl.ZIndex = 20

local function setTooltip(btn, text)
    if not text or text == "" then return end
    btn.MouseEnter:Connect(function()
        ttLbl.Text = text
        local ap = btn.AbsolutePosition
        local as = btn.AbsoluteSize
        local vp = workspace.CurrentCamera.ViewportSize
        local tx = math.min(math.max(ap.X, 4), vp.X - 185)
        local ty = ap.Y + as.Y + 4
        if ty + 30 > vp.Y then ty = ap.Y - 34 end
        ttFrame.Position = UDim2.new(0, tx, 0, ty)
        ttFrame.Visible  = true
    end)
    btn.MouseLeave:Connect(function() ttFrame.Visible = false end)
end

-- ─── Title bar ───────────────────────────────────────────────────────────────
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
titleLbl.TextColor3 = Color3.new(1, 1, 1)
titleLbl.TextStrokeTransparency = 1
titleLbl.Text     = "Devilish | Dropper RNG"
titleLbl.TextSize = 12
titleLbl.Font     = Enum.Font.GothamBold
titleLbl.TextXAlignment = Enum.TextXAlignment.Left

-- ─── Minimize button ─────────────────────────────────────────────────────────
local minBtn = Instance.new("TextButton", titleBar)
minBtn.Size = UDim2.new(0, 28, 0, 24)
minBtn.Position = UDim2.new(1, -64, 0, 4)
minBtn.BackgroundColor3 = Color3.fromRGB(38, 12, 65)
minBtn.TextColor3 = Color3.fromRGB(235, 210, 255)
minBtn.Text     = "-"
minBtn.TextSize = 18
minBtn.Font     = Enum.Font.GothamBold
minBtn.BorderSizePixel = 0
Instance.new("UICorner", minBtn).CornerRadius = UDim.new(0, 5)
mkStroke(minBtn, C_DIV, 1, 0.25)
minBtn.MouseButton1Click:Connect(function()
    panel.Visible  = false
    bubble.Visible = true
end)
setTooltip(minBtn, "Minimize to bubble icon")

-- ─── Close button (forward declare defs) ─────────────────────────────────────
local CONTROL_DEFS

local closeBtn = Instance.new("TextButton", titleBar)
closeBtn.Size = UDim2.new(0, 28, 0, 24)
closeBtn.Position = UDim2.new(1, -32, 0, 4)
closeBtn.BackgroundColor3 = Color3.fromRGB(140, 18, 35)
closeBtn.TextColor3 = Color3.fromRGB(255, 155, 165)
closeBtn.Text     = "X"
closeBtn.TextSize = 13
closeBtn.Font     = Enum.Font.GothamBold
closeBtn.BorderSizePixel = 0
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 5)
mkGrad(closeBtn, Color3.fromRGB(160, 22, 45), Color3.fromRGB(95, 8, 75), 90)
mkStroke(closeBtn, Color3.fromRGB(225, 55, 80), 1, 0.15)
closeBtn.MouseButton1Click:Connect(function()
    for _, def in ipairs(CONTROL_DEFS or {}) do
        local api = def.getApi()
        if api then pcall(function() api.disable() end) end
    end
    g:Destroy()
    _G.DropperRNGMain = nil
end)
setTooltip(closeBtn, "Close panel and disable all scripts")

-- ─── Drag ────────────────────────────────────────────────────────────────────
local dragging = false
local dragStart, panStart
titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging  = true
        dragStart = input.Position
        panStart  = panel.Position
    end
end)
UIS.InputChanged:Connect(function(input)
    if not dragging or input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
    local d = input.Position - dragStart
    panel.Position = UDim2.new(panStart.X.Scale, panStart.X.Offset + d.X, panStart.Y.Scale, panStart.Y.Offset + d.Y)
end)
UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if dragging then
            dragging = false
            local state = loadState()
            state.guiX = panel.Position.X.Offset
            state.guiY = panel.Position.Y.Offset
            saveState(state)
        end
    end
end)

-- ─── Tab bar ─────────────────────────────────────────────────────────────────
local tabBar = Instance.new("Frame", panel)
tabBar.Size = UDim2.new(1, 0, 0, 28)
tabBar.Position = UDim2.new(0, 0, 0, 32)
tabBar.BackgroundColor3 = C_TABS
tabBar.BorderSizePixel  = 0
mkGrad(tabBar, Color3.fromRGB(14, 5, 28), Color3.fromRGB(10, 3, 20), 90)

local tabControls = Instance.new("TextButton", tabBar)
tabControls.Size = UDim2.new(0, TAB_W, 1, 0)
tabControls.BackgroundColor3 = C_TAB_ON
tabControls.TextColor3 = C_TXT_ON
tabControls.Text     = "Controls"
tabControls.TextSize = 10
tabControls.Font     = Enum.Font.GothamBold
tabControls.BorderSizePixel = 0
Instance.new("UICorner", tabControls).CornerRadius = UDim.new(0, 5)

local tabStats = Instance.new("TextButton", tabBar)
tabStats.Size = UDim2.new(0, TAB_W, 1, 0)
tabStats.Position = UDim2.new(0, TAB_W, 0, 0)
tabStats.BackgroundColor3 = C_TAB_OFF
tabStats.TextColor3 = C_TXT_OFF
tabStats.Text     = "Stats"
tabStats.TextSize = 10
tabStats.Font     = Enum.Font.GothamBold
tabStats.BorderSizePixel = 0
Instance.new("UICorner", tabStats).CornerRadius = UDim.new(0, 5)

local tabDiv = Instance.new("Frame", panel)
tabDiv.Size = UDim2.new(1, 0, 0, 1)
tabDiv.Position = UDim2.new(0, 0, 0, 60)
tabDiv.BackgroundColor3 = C_DIV
tabDiv.BorderSizePixel  = 0
mkGrad(tabDiv, C_DIV, Color3.fromRGB(150, 20, 55), 0)

-- ─── Content frames ──────────────────────────────────────────────────────────
local CONTENT_Y = 61
local CONTENT_H = PANEL_H_CONTROLS - CONTENT_Y
local HALF_W = math.floor((W - 16) / 2)

local controlsFrame = Instance.new("ScrollingFrame", panel)
controlsFrame.Size = UDim2.new(0, W, 0, CONTENT_H)
controlsFrame.Position = UDim2.new(0, 0, 0, CONTENT_Y)
controlsFrame.BackgroundTransparency = 1
controlsFrame.BorderSizePixel = 0
controlsFrame.ScrollBarThickness = 4
controlsFrame.ScrollBarImageColor3 = C_STROKE
controlsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

local statsFrame = Instance.new("Frame", panel)
statsFrame.Size = UDim2.new(0, W, 0, CONTENT_H)
statsFrame.Position = UDim2.new(0, 0, 0, CONTENT_Y)
statsFrame.BackgroundTransparency = 1
statsFrame.BorderSizePixel = 0
statsFrame.Visible = false

-- ─── makeToggleBtn ───────────────────────────────────────────────────────────
local function makeToggleBtn(parent, def, xPos, width, yPos)
    local btn = Instance.new("TextButton", parent)
    btn.Size = UDim2.new(0, width, 0, 28)
    btn.Position = UDim2.new(0, xPos, 0, yPos)
    btn.BackgroundColor3 = C_BTN_OFF
    btn.TextColor3 = C_BTXT_OFF
    btn.TextSize   = 13
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

    btn.MouseButton1Click:Connect(function()
        local api = def.getApi()
        if api then pcall(function() api.toggle() end) end
        refresh()
        local state = loadState()
        local a = def.getApi()
        state[def.key] = a and a.isActive() or false
        saveState(state)
    end)

    refresh()
    table.insert(refreshFns, refresh)
    if def.tip then setTooltip(btn, def.tip) end
    return btn
end

-- ─── Toggle definitions ─────────────────────────────────────────────────────
CONTROL_DEFS = {
    {key = "autoRoll",      label = "Script Roll",       getApi = function() return _G.DR_AutoRoll end,      tip = "Rolls automatically at your current cooldown speed"},
    {key = "legitRoll",     label = "Legit Roll",      getApi = function() return _G.DR_LegitRoll end,     tip = "Rolls every 2.2s without animations (disables Auto Roll)"},
    {key = "autoEquipBest", label = "Auto Equip Best", getApi = function() return _G.DR_AutoEquipBest end, tip = "Replaces placed droppers when a higher value one is in inventory"},
    {key = "autoCollect",   label = "Auto Collect",    getApi = function() return _G.DR_AutoCollect end,   tip = "Teleports to collector if too far, jumps every 2s to collect cash"},
    {key = "autoRebirth",   label = "Auto Rebirth",    getApi = function() return _G.DR_AutoRebirth end,   tip = "Rebirths automatically when you have enough money"},
    {key = "autoBuyUpgrade",label = "Auto Upgrade",    getApi = function() return _G.DR_AutoBuyUpgrade end,tip = "Buys the cheapest affordable upgrade (money and rolls)"},
    {key = "autoClaimIndex",label = "Auto Claim Index", getApi = function() return _G.DR_AutoClaimIndex end,tip = "Claims all available index rewards every 30s"},
    {key = "autoScrapper",  label = "Auto Scrapper",   getApi = function() return _G.DR_AutoScrapper end,  tip = "Scraps all droppers below the Scrap Below threshold"},
    {key = "autoResearch",  label = "Auto Research",   getApi = function() return _G.DR_AutoResearch end,  tip = "Crafts the next research item when you have enough scrap"},
}

-- ─── Controls tab: toggles ──────────────────────────────────────────────────
-- Row 0: Auto Roll + Legit Roll
makeToggleBtn(controlsFrame, CONTROL_DEFS[1], 8, HALF_W, 6)
makeToggleBtn(controlsFrame, CONTROL_DEFS[2], 8 + HALF_W + 2, HALF_W, 6)

-- Roll Limit input right under the roll toggles
do
    local rollLimitY = 6 + 32

    local rollLimitLbl = Instance.new("TextLabel", controlsFrame)
    rollLimitLbl.Size = UDim2.new(0, 88, 0, 24)
    rollLimitLbl.Position = UDim2.new(0, 8, 0, rollLimitY)
    rollLimitLbl.BackgroundTransparency = 1
    rollLimitLbl.TextColor3 = Color3.fromRGB(215, 190, 255)
    rollLimitLbl.TextSize = 10
    rollLimitLbl.Font = Enum.Font.GothamBold
    rollLimitLbl.TextXAlignment = Enum.TextXAlignment.Left
    rollLimitLbl.Text = "Roll Limit:"
    setTooltip(rollLimitLbl, "Script Roll stops and switches to Legit Roll when total rolls reach this number (0 or empty = unlimited)")

    local rollLimitInput = Instance.new("TextBox", controlsFrame)
    rollLimitInput.Size = UDim2.new(0, W - 16 - 90, 0, 24)
    rollLimitInput.Position = UDim2.new(0, 98, 0, rollLimitY)
    rollLimitInput.BackgroundColor3 = Color3.fromRGB(20, 8, 38)
    rollLimitInput.TextColor3 = Color3.new(1, 1, 1)
    rollLimitInput.PlaceholderText = "e.g. 5000 or 5K"
    rollLimitInput.PlaceholderColor3 = Color3.fromRGB(120, 100, 150)
    rollLimitInput.TextSize = 11
    rollLimitInput.Font = Enum.Font.GothamMedium
    rollLimitInput.Text = config.rollLimit > 0 and fmtComma(config.rollLimit) or ""
    rollLimitInput.ClearTextOnFocus = false
    rollLimitInput.BorderSizePixel = 0
    Instance.new("UICorner", rollLimitInput).CornerRadius = UDim.new(0, 5)
    mkStroke(rollLimitInput, C_STROKE, 1, 0.4)

    rollLimitInput.FocusLost:Connect(function()
        local val = parseNum(rollLimitInput.Text)
        config.rollLimit = val
        rollLimitInput.Text = val > 0 and fmtComma(val) or ""
        local state = loadState()
        state.rollLimit = val
        saveState(state)
    end)
end

-- Remaining toggles (skip first 2 which are already placed)
local TOGGLE_Y_OFFSET = 6 + 32 + 28 -- after roll row + roll limit input
for i = 3, #CONTROL_DEFS do
    local idx = i - 3
    local col = idx % 2
    local row = math.floor(idx / 2)
    local x = col == 0 and 8 or (8 + HALF_W + 2)
    local y = TOGGLE_Y_OFFSET + row * 32
    makeToggleBtn(controlsFrame, CONTROL_DEFS[i], x, HALF_W, y)
end

-- Scrap threshold input + Divider + Rejoin in controls
do
    local remainingRows = math.ceil((#CONTROL_DEFS - 2) / 2)
    local inputY = TOGGLE_Y_OFFSET + remainingRows * 32

    local scrapLbl = Instance.new("TextLabel", controlsFrame)
    scrapLbl.Size = UDim2.new(0, 88, 0, 24)
    scrapLbl.Position = UDim2.new(0, 8, 0, inputY)
    scrapLbl.BackgroundTransparency = 1
    scrapLbl.TextColor3 = Color3.fromRGB(215, 190, 255)
    scrapLbl.TextSize = 10
    scrapLbl.Font = Enum.Font.GothamBold
    scrapLbl.TextXAlignment = Enum.TextXAlignment.Left
    scrapLbl.Text = "Scrap Below:"
    setTooltip(scrapLbl, "Auto Scrapper scraps droppers below this cash/s value (e.g. 20K, 1M, 100B)")

    local scrapInput = Instance.new("TextBox", controlsFrame)
    scrapInput.Size = UDim2.new(0, W - 16 - 90, 0, 24)
    scrapInput.Position = UDim2.new(0, 98, 0, inputY)
    scrapInput.BackgroundColor3 = Color3.fromRGB(20, 8, 38)
    scrapInput.TextColor3 = Color3.new(1, 1, 1)
    scrapInput.PlaceholderText = "e.g. 20000 or 20K"
    scrapInput.PlaceholderColor3 = Color3.fromRGB(120, 100, 150)
    scrapInput.TextSize = 11
    scrapInput.Font = Enum.Font.GothamMedium
    scrapInput.Text = config.scrapThreshold > 0 and fmtComma(config.scrapThreshold) or ""
    scrapInput.ClearTextOnFocus = false
    scrapInput.BorderSizePixel = 0
    Instance.new("UICorner", scrapInput).CornerRadius = UDim.new(0, 5)
    mkStroke(scrapInput, C_STROKE, 1, 0.4)

    scrapInput.FocusLost:Connect(function()
        local val = parseNum(scrapInput.Text)
        config.scrapThreshold = val
        scrapInput.Text = val > 0 and fmtComma(val) or ""
        local state = loadState()
        state.scrapThreshold = val
        saveState(state)
    end)

    local divY = inputY + 28 + 2

    local d = Instance.new("Frame", controlsFrame)
    d.Size = UDim2.new(0, W - 12, 0, 1)
    d.Position = UDim2.new(0, 6, 0, divY)
    d.BackgroundColor3 = C_DIV
    d.BorderSizePixel  = 0
    mkGrad(d, C_DIV, Color3.fromRGB(140, 18, 50), 0)

    local rejoinBtn = Instance.new("TextButton", controlsFrame)
    rejoinBtn.Size = UDim2.new(0, W - 16, 0, 28)
    rejoinBtn.Position = UDim2.new(0, 8, 0, divY + 6)
    rejoinBtn.BackgroundColor3 = Color3.fromRGB(12, 45, 65)
    rejoinBtn.TextColor3 = Color3.fromRGB(140, 220, 255)
    rejoinBtn.Text     = "Rejoin Server"
    rejoinBtn.TextSize = 13
    rejoinBtn.Font     = Enum.Font.GothamBold
    rejoinBtn.BorderSizePixel = 0
    Instance.new("UICorner", rejoinBtn).CornerRadius = UDim.new(0, 6)
    mkStroke(rejoinBtn, Color3.fromRGB(40, 120, 180), 1, 0.25)
    rejoinBtn.MouseButton1Click:Connect(function()
        rejoinBtn.Text = "Rejoining..."
        local TS = game:GetService("TeleportService")
        local pid = game.PlaceId
        local jid = game.JobId
        pcall(function()
            if queue_on_teleport then
                queue_on_teleport('loadstring(readfile("scripts/dropper_rng.lua"))()')
            end
        end)
        local ok2 = pcall(function() TS:TeleportToPlaceInstance(pid, jid) end)
        if not ok2 then
            pcall(function() TS:Teleport(pid) end)
        end
    end)
    setTooltip(rejoinBtn, "Rejoin this server (works in private servers)")

    -- Disable Effects toggle
    local fxDef = {
        key = "disableEffects",
        label = "Disable Effects",
        getApi = function() return _G.DR_DisableEffects end,
        tip = "Disables all dropper & totem visual effects (particles, lights, beams) across all bases",
    }
    local fxY = divY + 6 + 28 + 6
    makeToggleBtn(controlsFrame, fxDef, 8, W - 16, fxY)
    table.insert(CONTROL_DEFS, fxDef)

    -- Night Mode toggle
    local nightDef = {
        key = "nightMode",
        label = "Night Mode",
        getApi = function() return _G.DR_NightMode end,
        tip = "Sets the game lighting to night time",
    }
    local nightY = fxY + 32
    makeToggleBtn(controlsFrame, nightDef, 8, W - 16, nightY)
    table.insert(CONTROL_DEFS, nightDef)

    -- Set canvas size for scrolling
    controlsFrame.CanvasSize = UDim2.new(0, 0, 0, nightY + 28 + 8)
end

-- ─── Stats tab ──────────────────────────────────────────────────────────────
local statLabels = {}
local STAT_NAMES = {"Money", "Rolls", "Luck", "Dropper Limit", "Roll Speed", "Scrap", "Rebirths", "Rebirth Req"}
for i, name in ipairs(STAT_NAMES) do
    local col = (i - 1) % 2
    local row = math.floor((i - 1) / 2)
    local lbl = Instance.new("TextLabel", statsFrame)
    lbl.Size = UDim2.new(0, HALF_W, 0, 14)
    lbl.Position = UDim2.new(0, col == 0 and 8 or (8 + HALF_W + 2), 0, 8 + row * 18)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(170, 150, 210)
    lbl.TextSize = 10
    lbl.Font = Enum.Font.GothamMedium
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Text = name .. ": ?"
    statLabels[name] = lbl
end

-- Best/Worst placed dropper columns (4 rows each, side by side)
local placedY = 8 + math.ceil(#STAT_NAMES / 2) * 18 + 2
do
    local divP = Instance.new("Frame", statsFrame)
    divP.Size = UDim2.new(0, W - 12, 0, 1)
    divP.Position = UDim2.new(0, 6, 0, placedY)
    divP.BackgroundColor3 = C_DIV
    divP.BorderSizePixel = 0
    mkGrad(divP, C_DIV, Color3.fromRGB(140, 18, 50), 0)
end
local placedStartY = placedY + 5
local PLACED_ROWS = {"Header", "Name", "CPS", "Rarity"}
for col, side in ipairs({"Worst", "Best"}) do
    local xOff = col == 1 and 8 or (8 + HALF_W + 2)
    for row, key in ipairs(PLACED_ROWS) do
        local lbl = Instance.new("TextLabel", statsFrame)
        lbl.Size = UDim2.new(0, HALF_W, 0, 14)
        lbl.Position = UDim2.new(0, xOff, 0, placedStartY + (row - 1) * 15)
        lbl.BackgroundTransparency = 1
        lbl.TextSize = 10
        lbl.Font = (key == "Header") and Enum.Font.GothamBold or Enum.Font.GothamMedium
        lbl.TextColor3 = (key == "Header") and Color3.fromRGB(200, 175, 235) or Color3.fromRGB(170, 150, 210)
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.Text = "?"
        statLabels[side .. key] = lbl
    end
end

table.insert(refreshFns, function()
    statLabels["Money"].Text         = "Money: " .. fmtNum(gameState.money)
    statLabels["Rolls"].Text         = "Rolls: " .. fmtComma(gameState.totalRolls or gameState.rolls)
    local luck = gameState.totalLuckMultiplier or gameState.luckMultiplier
    if type(luck) == "number" and luck >= 1e6 then
        statLabels["Luck"].Text = "Luck: " .. fmtNum(luck) .. "x"
    elseif type(luck) == "number" and luck >= 1000 then
        statLabels["Luck"].Text = "Luck: " .. fmtComma(math.floor(luck)) .. "x"
    else
        statLabels["Luck"].Text = "Luck: " .. string.format("%.1fx", luck or 0)
    end
    statLabels["Dropper Limit"].Text = "Dropper Limit: " .. tostring(gameState.dropperLimit)
    statLabels["Roll Speed"].Text    = "Roll Spd: " .. string.format("%.1fs", gameState.rollSpeedSeconds)
    statLabels["Scrap"].Text         = "Scrap: " .. fmtNum(gameState.scrap)
    statLabels["Rebirths"].Text      = "Rebirths: " .. tostring(gameState.rebirthCount)
    statLabels["Rebirth Req"].Text   = "Req: " .. fmtNum(gameState.rebirthRequirement)

    -- Best/Worst placed dropper (workspace scan)
    local bestId, worstId = nil, nil
    local bestVal, worstVal = -1, math.huge
    pcall(function()
        local basesFolder = workspace:FindFirstChild("Bases")
        if not basesFolder then return end
        for _, base in ipairs(basesFolder:GetChildren()) do
            if base:IsA("Model") and tonumber(base:GetAttribute("OwnerUserId")) == PL.UserId then
                local builds = base:FindFirstChild("Runtime") and base.Runtime:FindFirstChild("Builds")
                if not builds then return end
                for _, child in ipairs(builds:GetChildren()) do
                    local iid = child:GetAttribute("ItemId")
                    if type(iid) == "string" and iid:match("^dropper_") then
                        local val = getDropperValue(iid)
                        if val > bestVal then bestVal, bestId = val, iid end
                        if val < worstVal then worstVal, worstId = val, iid end
                    end
                end
                break
            end
        end
    end)

    for _, side in ipairs({"Worst", "Best"}) do
        local id = side == "Best" and bestId or worstId
        statLabels[side .. "Header"].Text = side .. " Dropper Placed"
        if id then
            local dn, cps, rar = getDropperDisplay(id)
            statLabels[side .. "Name"].Text = dn
            statLabels[side .. "CPS"].Text = "$" .. cps .. "/s"
            statLabels[side .. "Rarity"].Text = rar
        else
            statLabels[side .. "Name"].Text = "?"
            statLabels[side .. "CPS"].Text = "?"
            statLabels[side .. "Rarity"].Text = "?"
        end
    end
end)

-- ─── Tab switching ───────────────────────────────────────────────────────────
local function showTab(name)
    controlsFrame.Visible  = (name == "controls")
    statsFrame.Visible     = (name == "stats")
    local function setTab(btn, on)
        btn.BackgroundColor3 = on and C_TAB_ON or C_TAB_OFF
        btn.TextColor3       = on and C_TXT_ON or C_TXT_OFF
    end
    setTab(tabControls, name == "controls")
    setTab(tabStats,    name == "stats")
    if name == "stats" then
        panel.Size = UDim2.new(0, W, 0, PANEL_H_STATS)
    else
        panel.Size = UDim2.new(0, W, 0, PANEL_H_CONTROLS)
    end
end

tabControls.MouseButton1Click:Connect(function() showTab("controls") end)
tabStats.MouseButton1Click:Connect(function() showTab("stats") end)
showTab("controls")

-- ─── State restoration ──────────────────────────────────────────────────────
for _, def in ipairs(CONTROL_DEFS) do
    if savedState[def.key] then
        local api = def.getApi()
        if api then pcall(function() api.enable() end) end
    end
end
for _, fn in ipairs(refreshFns) do pcall(fn) end

-- ─── Periodic refresh ────────────────────────────────────────────────────────
task.spawn(function()
    while _G.DropperRNGMain do
        task.wait()
        for _, fn in ipairs(refreshFns) do pcall(fn) end
    end
end)
]])
if _LLI1I1il then
  local _liIllIi,_I1lLLIi1=pcall(_LLI1I1il)
  if not _liIllIi then warn("[ANTI-HOOK] Script error: "..tostring(_I1lLLIi1)) end
else
  warn("[ANTI-HOOK] Load error: "..tostring(_LIl1IL))
end
else
  warn("[ANTI-HOOK] Integrity check failed — script execution blocked.")
end
end