do
local _ll1L1Il={}
local _1Ili1li=(getgenv or function() return _G end)()
local _LLLllIiLl=true
_ll1L1Il.loadstring=_1Ili1li.loadstring
_ll1L1Il.load=_1Ili1li.load
_ll1L1Il.type=_1Ili1li.type
_ll1L1Il.pcall=_1Ili1li.pcall
_ll1L1Il.rawequal=rawequal
_ll1L1Il.tostring=tostring
_ll1L1Il.coroutine_resume=coroutine.resume
_ll1L1Il.coroutine_create=coroutine.create
_ll1L1Il.math_floor=math.floor
_ll1L1Il.string_byte=string.byte
_ll1L1Il.table_concat=table.concat
pcall(function() _1Ili1li.hookfunction=nil end)
pcall(function() _1Ili1li.hookmetamethod=nil end)
pcall(function() _1Ili1li.newcclosure=nil end)
pcall(function() _1Ili1li.replaceclosure=nil end)
pcall(function() _1Ili1li.clonefunction=nil end)
pcall(function() _1Ili1li.getgc=nil end)
pcall(function() _1Ili1li.getinfo=nil end)
pcall(function() _1Ili1li.getupvalue=nil end)
pcall(function() _1Ili1li.getupvalues=nil end)
pcall(function() _1Ili1li.setupvalue=nil end)
pcall(function() _1Ili1li.getrawmetatable=nil end)
pcall(function() _1Ili1li.setreadonly=nil end)
pcall(function() _1Ili1li.isreadonly=nil end)
pcall(function() _1Ili1li.getnamecallmethod=nil end)
pcall(function() _1Ili1li.setnamecallmethod=nil end)
pcall(function() _1Ili1li.decompile=nil end)
pcall(function() _1Ili1li.disassemble=nil end)
pcall(function() _1Ili1li.saveinstance=nil end)
pcall(function() _1Ili1li.getscriptbytecode=nil end)
pcall(function() _1Ili1li.dumpstring=nil end)
pcall(function() _1Ili1li.writefile=nil end)
pcall(function() _1Ili1li.appendfile=nil end)
pcall(function() _1Ili1li.getconnections=nil end)
do
  local _ii11il=load or loadstring
  if _ii11il then
    local _Ii1li1i1,_LLIILI=pcall(_ii11il,"return 1")
    if _Ii1li1i1 and type(_LLIILI)=="function" then
      local _LL1L11Il,_liLL1l=pcall(_LLIILI)
      if not _LL1L11Il or _liLL1l~=1 then _LLLllIiLl=false end
    end
  end
end
pcall(function()
  local _ls=load or loadstring
  if _ls and debug and debug.info then
    local _s=debug.info(_ls,"s")
    if _s and _s~="[C]" and _s~="" then _LLLllIiLl=false end
  end
end)
do
  local _I11l1,_liILIlIIi=pcall(function() return game:GetService("Players") end)
  local _1LLLIIL,_ILII11111=pcall(function() return game.GetService(game,"Players") end)
  if _I11l1 and _1LLLIIL and _liILIlIIi~=_ILII11111 then _LLLllIiLl=false end
end
do
  local _LiLlii1ll=_1Ili1li.loadstring or _1Ili1li.load
  if _LiLlii1ll and not rawequal(load or loadstring,_LiLlii1ll) then _LLLllIiLl=false end
end
pcall(function()
  local _mt=getrawmetatable and getrawmetatable(_1Ili1li)
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
  local _ILi11ll1=os.clock()
  pcall(function() game:GetService("Players") end)
  local _i1LIIL=os.clock()-_ILi11ll1
  if _i1LIIL>0.05 then _LLLllIiLl=false end
end
pcall(function()
  local _gs=tostring(game)
  if _gs~="Game" and not string.match(_gs,"^%a") then _LLLllIiLl=false end
end)
do
  local _Illll=coroutine.create(function() coroutine.yield(42) end)
  local _lLillIiL,_LLiiii1=coroutine.resume(_Illll)
  if not _lLillIiL or _LLiiii1~=42 then _LLLllIiLl=false end
end
pcall(function()
  local _pid=game.PlaceId
  if type(_pid)~="number" or _pid==0 then _LLLllIiLl=false end
end)
task.spawn(function()
  while _LLLllIiLl do
    if not rawequal(type,_ll1L1Il.type) then _LLLllIiLl=false end
    if not rawequal(pcall,_ll1L1Il.pcall) then _LLLllIiLl=false end
    local _ls=_1Ili1li.loadstring or _1Ili1li.load
    if _ls and _ll1L1Il.loadstring and not rawequal(_ls,_ll1L1Il.loadstring) then _LLLllIiLl=false end
    pcall(function()
      if debug and debug.info then
        local _src=debug.info(_ll1L1Il.loadstring or _ll1L1Il.load,"s")
        if _src and _src~="[C]" and _src~="" then _LLLllIiLl=false end
      end
    end)
    do
      local _ok1,_v1=pcall(function() return game:GetService("Players") end)
      local _ok2,_v2=pcall(function() return game.GetService(game,"Players") end)
      if _ok1 and _ok2 and _v1~=_v2 then _LLLllIiLl=false end
    end
    if not _LLLllIiLl then return end
    task.wait(2+math.random()*3)
  end
end)
if _LLLllIiLl then
local _iilili,_i11Ii=(load or loadstring)([[
-- ─── Sell Lemons Automation ───────────────────────────────────────────────────
-- Devilish Scripts | Sell Lemons
-- Targets Potassium executor

if _G.SellLemonsMain then return end
_G.SellLemonsMain = true

-- ─── Services ─────────────────────────────────────────────────────────────────
local RS            = game:GetService("ReplicatedStorage")
local CS            = game:GetService("CollectionService")
local UIS           = game:GetService("UserInputService")
local HttpService   = game:GetService("HttpService")
local VirtualUser   = game:GetService("VirtualUser")
local Players       = game:GetService("Players")
local PL            = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer

-- ─── Wait for game to load (autoexecute support) ─────────────────────────────
if not game:IsLoaded() then game.Loaded:Wait() end

-- ─── State persistence ────────────────────────────────────────────────────────
local STATE_FILE = "sellLemons_state.json"
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

-- ─── Tycoon discovery ─────────────────────────────────────────────────────────
local myTycoon, remotes
for _ = 1, 60 do
    for _, tycoon in ipairs(CS:GetTagged("Tycoon")) do
        local owner = tycoon:FindFirstChild("Owner")
        if owner and owner:IsA("ObjectValue") and owner.Value == PL then
            myTycoon = tycoon
            break
        end
    end
    if myTycoon then break end
    task.wait(0.5)
end
if not myTycoon then
    _G.SellLemonsMain = nil
    return
end

-- Wait for Remotes folder (may not exist immediately)
local ok, result = pcall(function()
    return myTycoon:WaitForChild("Remotes", 10)
end)
remotes = ok and result or nil

-- Wait for entities to finish replicating (tags, remotes)
task.wait(3)

-- ─── Tycoon re-discovery (handles ascension/rebirth destroying the tycoon) ──
task.spawn(function()
    while _G.SellLemonsMain do
        if not myTycoon or not myTycoon.Parent then
            for _ = 1, 60 do
                for _, tycoon in ipairs(CS:GetTagged("Tycoon")) do
                    local owner = tycoon:FindFirstChild("Owner")
                    if owner and owner:IsA("ObjectValue") and owner.Value == PL then
                        myTycoon = tycoon
                        break
                    end
                end
                if myTycoon and myTycoon.Parent then break end
                task.wait(0.5)
            end
            if myTycoon and myTycoon.Parent then
                pcall(function() remotes = myTycoon:WaitForChild("Remotes", 10) end)
            end
        end
        task.wait(1)
    end
end)

-- ─── Balance module (for price sorting) ──────────────────────────────────────
local Balance
pcall(function() Balance = require(RS:WaitForChild("Balance", 5)) end)
if not Balance then Balance = {} end


-- ─── Log10 math helpers (game stores large numbers as log₁₀) ────────────────
local NEG_INF = -math.huge

local function getLog10Attr(name)
    local vals = myTycoon:FindFirstChild("Values")
    if not vals then return NEG_INF end
    local raw = vals:GetAttribute(name)
    -- Game nests data in Values.Values (InstanceTable backing Configuration)
    if raw == nil then
        local inner = vals:FindFirstChild("Values")
        if inner then
            raw = inner:GetAttribute(name)
            if raw == nil then
                local child = inner:FindFirstChild(name)
                if child then pcall(function() raw = child.Value end) end
            end
        end
    end
    if raw == nil then
        local child = vals:FindFirstChild(name)
        if child and not child:IsA("Configuration") then
            pcall(function() raw = child.Value end)
        end
    end
    if raw == nil then return NEG_INF end
    if type(raw) == "string" and raw == "0" then return NEG_INF end
    local v = tonumber(tostring(raw))
    if not v or v ~= v or v == NEG_INF then return NEG_INF end
    return v
end

local function logAdd(a, b)
    if a == NEG_INF then return b end
    if b == NEG_INF then return a end
    if a > b then return a + math.log10(1 + 10 ^ (b - a)) end
    return b + math.log10(1 + 10 ^ (a - b))
end

local REBIRTH_BASE_LOG10 = math.log10(1.8e17)
local REBIRTH_EXP = 0.44

local function getPotentialInvestorsLog10()
    local logCash      = getLog10Attr("Cash")
    local logCashSpent = getLog10Attr("CashSpent")
    local logInv       = getLog10Attr("Investors")
    local logInvSpent  = getLog10Attr("InvestorsSpent")

    local logTotalCash = logAdd(logCash, logCashSpent)
    local logInvX10    = (logInv == NEG_INF) and NEG_INF or (logInv + 1)
    local effSpent     = (logInvSpent ~= NEG_INF and logInvX10 < logInvSpent) and logInvX10 or logInvSpent
    local logTotalInv  = logAdd(logInv, effSpent)

    if logTotalInv == NEG_INF then
        if logTotalCash == NEG_INF then return NEG_INF end
        return REBIRTH_EXP * (logTotalCash - REBIRTH_BASE_LOG10)
    end

    local logRatio = logTotalCash - REBIRTH_BASE_LOG10 - logTotalInv / REBIRTH_EXP
    if logRatio < -8 then
        return logTotalInv + math.log10(REBIRTH_EXP) + logRatio
    end
    local ratio  = 10 ^ logRatio
    local factor = (1 + ratio) ^ REBIRTH_EXP - 1
    if factor <= 0 then return NEG_INF end
    return logTotalInv + math.log10(factor)
end

-- ─── Shared flag: upgrade cache invalidation on rebirth ─────────────────────
local upgradesCacheDirty = false


-- ─── Character visibility (save/restore LocalTransparencyModifier) ──────────
local function hideChar(char)
    local saved = {}
    for _, desc in ipairs(char:GetDescendants()) do
        if desc:IsA("BasePart") then
            saved[desc] = desc.LocalTransparencyModifier
            desc.LocalTransparencyModifier = 1
        end
    end
    return saved
end

local function showChar(saved)
    for desc, val in pairs(saved) do
        if desc.Parent then
            desc.LocalTransparencyModifier = val
        end
    end
end

-- ─── Remote finder (direct child first, then recursive fallback) ────────────
local function findRemoteFunction(parent, name)
    for _, child in ipairs(parent:GetChildren()) do
        if child.Name == name and child:IsA("RemoteFunction") then
            return child
        end
    end
    local found = parent:FindFirstChild(name, true)
    if found and found:IsA("RemoteFunction") then return found end
    return nil
end

-- ─── Suppress building reveal animations (all tycoons, all players) ──────────
-- Sets EnabledOnLoad to skip the build animation while still allowing the
-- Revealed signal to fire (which game systems depend on for progression).
-- Does NOT touch Transparency, particles, beams, trails, or sounds.
local TweenService = game:GetService("TweenService")
local INSTANT_TWEEN = TweenInfo.new(0)

local function suppressReveal(item)
    pcall(function() item:SetAttribute("EnabledOnLoad", true) end)
end

local function instantReveal(item)
    pcall(function()
        -- Skip reveal if Hide Buildings is active (buildings stay hidden)
        local hb = _G.SL_HideBuildings
        if hb and hb.isActive() then return end
        for _, desc in ipairs(item:GetDescendants()) do
            if desc:IsA("BasePart") then
                desc.LocalTransparencyModifier = 0
                TweenService:Create(desc, INSTANT_TWEEN, {LocalTransparencyModifier = 0}):Play()
            end
        end
    end)
end

local watchedItems = {}
local function watchPurchased(item)
    if watchedItems[item] then return end
    watchedItems[item] = true
    suppressReveal(item)
    pcall(function()
        item:GetAttributeChangedSignal("Purchased"):Connect(function()
            if item:GetAttribute("Purchased") then
                instantReveal(item)
                task.delay(0.5, function() instantReveal(item) end)
            end
        end)
    end)
    pcall(function()
        item:GetAttributeChangedSignal("Shown"):Connect(function()
            if item:GetAttribute("Shown") then
                instantReveal(item)
                task.delay(0.5, function() instantReveal(item) end)
            end
        end)
    end)
end

for _, tag in ipairs({"Tycoon.Purchase", "Tycoon.Purchasable", "Tycoon.Earner"}) do
    for _, item in ipairs(CS:GetTagged(tag)) do
        watchPurchased(item)
    end
    CS:GetInstanceAddedSignal(tag):Connect(watchPurchased)
end

-- Pre-set EnabledOnLoad on tycoon descendants BEFORE tag constructors run.
-- This wins the race: DescendantAdded fires before the tag system processes
-- the instance, so EnabledOnLoad is already true when Enabling fires.
local function hookTycoonSuppression(tycoon)
    tycoon.DescendantAdded:Connect(function(desc)
        pcall(function() desc:SetAttribute("EnabledOnLoad", true) end)
    end)
end

for _, tycoon in ipairs(CS:GetTagged("Tycoon")) do
    hookTycoonSuppression(tycoon)
end
CS:GetInstanceAddedSignal("Tycoon"):Connect(hookTycoonSuppression)

-- ═══════════════════════════════════════════════════════════════════════════════
-- Feature Modules — single master loop, each feature in its own do..end block
-- ═══════════════════════════════════════════════════════════════════════════════

-- ─── Price helper (cheapest first) ───────────────────────────────────────────
local function getPrice(name)
    if Balance and Balance.PurchasePrices then
        local p = Balance.PurchasePrices[name]
        if p then return p end
        p = Balance.PurchasePrices[name:gsub(" ", "")]
        if p then return p end
    end
    return nil -- nil = unknown price, caller decides
end

-- ─── Anti-AFK (always on) ────────────────────────────────────────────────────
PL.Idled:Connect(function()
    VirtualUser:ClickButton2(Vector2.new())
end)

-- ─── Shared flags (cross-feature communication) ────────────────────────────

-- ─── Periodic cache flush (purge dead instance refs every 30s) ───────────────
task.spawn(function()
    while _G.SellLemonsMain do
        task.wait(30)
        -- watchedItems (reveal suppression dedup)
        for inst in pairs(watchedItems) do
            if not inst.Parent then watchedItems[inst] = nil end
        end
    end
end)

-- ─── Post-rebirth UI cleanup (removes stuck screen covers) ─────────────────
local function cleanupRebirthUI()
    task.wait(3)
    -- 1. Hide any stuck UIUnderCover frames
    pcall(function()
        for _, desc in ipairs(PL.PlayerGui:GetDescendants()) do
            if desc:IsA("Frame") and desc:HasTag("UI.UnderCover") then
                desc.Visible = false
                desc.BackgroundTransparency = 1
            end
        end
    end)
    -- 2. Clear CinematicOverlays (make cover transparent + collapse letterbox)
    pcall(function()
        for _, gui in ipairs(PL.PlayerGui:GetChildren()) do
            if gui.Name == "CinematicOverlays" and gui:IsA("ScreenGui") then
                local cover = gui:FindFirstChild("Cover")
                if cover then cover.BackgroundTransparency = 1 end
                local lb = gui:FindFirstChild("Letterbox")
                if lb then
                    for _, bar in ipairs(lb:GetChildren()) do
                        if bar:IsA("Frame") then bar.Size = UDim2.fromScale(1, 0) end
                    end
                end
            end
        end
    end)
    -- 3. Pull peripherals (show HUD) + unreserve windows
    pcall(function() require(RS.Core.UIPeripheral).pull(true) end)
    pcall(function() require(RS.Core.UIWindow).unreserve() end)
    -- 4. Reset camera
    pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    -- 5. Re-enable character controls
    pcall(function()
        local char = PL.Character
        if char and char:FindFirstChildWhichIsA("Humanoid") then
            require(RS.Core.LocalCharacter).setControlsEnabled(true)
        end
    end)
    -- 6. Refresh remotes (folder may have been recreated)
    pcall(function() remotes = myTycoon:FindFirstChild("Remotes") or remotes end)
    for _, tag in ipairs({"Tycoon.Purchase", "Tycoon.Purchasable", "Tycoon.Earner"}) do
        for _, item in ipairs(CS:GetTagged(tag)) do
            suppressReveal(item)
        end
    end
end

-- Listen for Rebirthed remote to trigger cleanup + auto-purchase burst
local function connectRebirthListener()
    pcall(function()
        if not remotes then return end
        for _, child in ipairs(remotes:GetChildren()) do
            if child.Name == "Rebirthed" and child:IsA("RemoteEvent") then
                child.OnClientEvent:Connect(function()
                    -- rebirth detected
                    task.spawn(cleanupRebirthUI)
                end)
                break
            end
        end
    end)
end
connectRebirthListener()

-- ─── Feature tick registry (single loop calls these) ────────────────────────
local featureTicks = {}

-- ─── Perma priority set (shared between Auto Purchase & Auto Perma) ─────────
-- All multiplier items from Balance.Multipliers are perma priority
local PERMA_PRIORITY = {}
if Balance and Balance.Multipliers then
    for name in pairs(Balance.Multipliers) do
        PERMA_PRIORITY[name] = true
    end
end
local function isPermaPriority(name)
    return PERMA_PRIORITY[name:gsub("%s+", "")] or false
end
local function isPriorityNotPerma(name)
    if not isPermaPriority(name) then return false end
    local vals = myTycoon:FindFirstChild("Values")
    if not vals then return true end
    local purchases = vals:FindFirstChild("Purchases")
    if not purchases then return true end
    local permFolder = purchases:FindFirstChild("Permanent")
    if not permFolder then return true end
    return not permFolder:GetAttribute(name:gsub("%s+", ""))
end
local function allPriorityPerma()
    local vals = myTycoon:FindFirstChild("Values")
    if not vals then return false end
    local purchases = vals:FindFirstChild("Purchases")
    if not purchases then return false end
    local permFolder = purchases:FindFirstChild("Permanent")
    if not permFolder then return false end
    for name in pairs(PERMA_PRIORITY) do
        if not permFolder:GetAttribute(name) then return false end
    end
    return true
end
local function getPermaSlots()
    local slots = 0
    pcall(function()
        local ascension = myTycoon.Values.Values:GetAttribute("Ascension") or 0
        local used = 0
        local vals = myTycoon:FindFirstChild("Values")
        if vals then
            local purchases = vals:FindFirstChild("Purchases")
            if purchases then
                local permFolder = purchases:FindFirstChild("Permanent")
                if permFolder then
                    for _ in pairs(permFolder:GetAttributes()) do
                        used = used + 1
                    end
                end
            end
        end
        slots = ascension - used
    end)
    return slots
end

-- ─── Auto Purchase (BuyNext-style + Shown-based fallback) ────────────────────
do
    local active = false
    local rfCache = {}

    -- Flush dead refs from rfCache every 30s
    task.spawn(function()
        while _G.SellLemonsMain do
            task.wait(30)
            for inst in pairs(rfCache) do
                if not inst.Parent then rfCache[inst] = nil end
            end
        end
    end)

    local LOG10_PENALTY = math.log10(3.33) -- ~0.52244 per ascension

    -- Items BuyNext may stall on — fallback buys these even when BuyNext is active
    -- Also used to exempt these from shouldSkip (can't be perma'd, so let Auto Purchase buy them)
    local PURCHASE_WHITELIST = {
        DashStatueMajor=true, DashStatueMinor1=true, DashStatueMinor2=true,
        DepotStatueMajor=true, DepotStatueMinor1=true, DepotStatueMinor2=true,
        Hill1=true, Hill2=true, Hill3=true,
        LabsRoofStaircase=true, LabsSecondFloorStaircase=true,
        LabsStatueMajor=true, LabsStatueMinor1=true, LabsStatueMinor2=true,
        NationalMonument=true,
        RepublicFloor2Staircase1=true, RepublicFloor2Staircase2=true,
        RepublicFloor3Staircase1=true, RepublicFloor3Staircase2=true,
        RepublicStatueMajor=true, RepublicStatueMinor1=true, RepublicStatueMinor2=true,
        RoboticsStaircase1=true, RoboticsStaircase2=true,
        RoboticsStatueMajor=true, RoboticsStatueMinor1=true, RoboticsStatueMinor2=true,
        StaircaseCurve1=true, StaircaseCurve2=true, StaircaseCurve3=true, StaircaseCurve4=true,
        StaircaseCurve5=true, StaircaseCurve6=true, StaircaseCurve7=true, StaircaseCurve8=true,
        StaircaseIntro=true,
        StaircasePlatform1=true, StaircasePlatform2=true, StaircasePlatform3=true, StaircasePlatform4=true,
        StaircasePlatform5=true, StaircasePlatform6=true, StaircasePlatform7=true, StaircasePlatform8=true,
        StaircasePlatformFinal=true,
        StaircaseStep1=true, StaircaseStep2=true, StaircaseStep3=true, StaircaseStep4=true,
        StaircaseStep5=true, StaircaseStep6=true, StaircaseStep7=true, StaircaseStep8=true,
        StaircaseStepFinal=true,
        StandStatueMajor=true, StandStatueMinor1=true, StandStatueMinor2=true,
        TradingStatueMajor=true, TradingStatueMinor1=true, TradingStatueMinor2=true,
        XStatueMajor=true, XStatueMinor1=true, XStatueMinor2=true,
    }
    _G.SL_PurchaseWhitelist = PURCHASE_WHITELIST

    local function shouldSkip(item)
        local api = _G.SL_AutoPerma
        if not api or not api.isActive() then return false end
        if not api.hasSlots() then return false end
        local name = item.Name:gsub("%s+", "")
        if PURCHASE_WHITELIST[name] then return false end
        if isPermaPriority(name) then return true end
        return false
    end

    -- Check if player owns the BuyNext (Remote Buy) power
    local function hasBuyNext()
        local ok, result = pcall(function()
            local state = myTycoon:FindFirstChild("State")
            if not state then return false end
            local bn = state:FindFirstChild("BuyNext")
            if bn and bn.Value and bn.Value > 0 then return true end
            local perm = state:FindFirstChild("Permanent")
            if perm then
                local permBN = perm:FindFirstChild("BuyNext")
                if permBN and permBN.Value and permBN.Value > 0 then return true end
            end
            return false
        end)
        return ok and result
    end

    -- Build name→instance lookup (strip spaces to match PurchaseOrder keys)
    local function buildItemMap()
        local map = {}
        for _, item in ipairs(CS:GetTagged("Tycoon.Purchase")) do
            if item:IsDescendantOf(myTycoon) then
                map[item.Name:gsub("%s+", "")] = item
            end
        end
        return map
    end

    -- Ordered purchase: follows Balance.PurchaseOrder, fires all unpurchased each frame
    task.spawn(function()
        while _G.SellLemonsMain do
            if active and Balance and Balance.PurchaseOrder then
                local itemMap = buildItemMap()
                for _, name in ipairs(Balance.PurchaseOrder) do
                    if not active or not _G.SellLemonsMain then break end
                    local item = itemMap[name]
                    if item and not item:GetAttribute("Purchased") and not shouldSkip(item) then
                        if not item:GetAttribute("Shown") then
                            item:SetAttribute("Shown", true)
                        end
                        local rf = rfCache[item]
                        if not rf or not rf.Parent then
                            rf = findRemoteFunction(item, "Purchase")
                            rfCache[item] = rf
                        end
                        if rf and rf.Parent then
                            task.spawn(pcall, rf.InvokeServer, rf, false)
                        end
                    end
                end
                if _G.SL_UpdateAscendCount then task.spawn(pcall, _G.SL_UpdateAscendCount) end
            end
            task.wait()
        end
    end)

    _G.SL_AutoPurchase = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val)
            if val == nil then active = not active else active = val end
        end,
        isActive = function() return active end,
    }
end

-- ─── Auto Upgrade (max affordable per earner) ───────────────────────────────
do
    local active = false
    local cachedEarners = {} -- {earnerEntity, rf} pairs
    local cacheTime = 0

    -- Game modules for getting earner entities + max affordable count
    local TycoonMgr, AnalyzerMod, BalancesMod
    pcall(function()
        TycoonMgr = require(RS.Modules.Tycoon.Tycoon)
        AnalyzerMod = require(RS.Modules.Tycoon.Component.TycoonAnalyzer)
        BalancesMod = require(RS.Modules.Tycoon.Component.Client.ClientTycoonBalances)
    end)

    task.spawn(function()
        while _G.SellLemonsMain do
            if active then
                pcall(function()
                    if upgradesCacheDirty or tick() - cacheTime > 30 or #cachedEarners == 0 then
                        cachedEarners = {}
                        if TycoonMgr and AnalyzerMod then
                            local tycoon = TycoonMgr.getLocal()
                            if tycoon then
                                local analyzer = tycoon:GetComponent(AnalyzerMod)
                                if analyzer then
                                    for name, entity in pairs(analyzer:GetEarners()) do
                                        if entity.Instance and entity.Instance:IsDescendantOf(myTycoon) then
                                            local rf = findRemoteFunction(entity.Instance, "Upgrade")
                                            if rf and rf.Parent then
                                                table.insert(cachedEarners, {entity = entity, rf = rf})
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        -- Fallback: if game modules unavailable, use tagged instances
                        if #cachedEarners == 0 then
                            for _, earner in ipairs(CS:GetTagged("Tycoon.Earner")) do
                                if earner:IsDescendantOf(myTycoon) then
                                    local rf = findRemoteFunction(earner, "Upgrade")
                                    if rf and rf.Parent then
                                        table.insert(cachedEarners, {entity = nil, rf = rf})
                                    end
                                end
                            end
                        end
                        cacheTime = tick()
                        upgradesCacheDirty = false
                    end
                    local valid = {}
                    for _, e in ipairs(cachedEarners) do
                        if e.rf.Parent then table.insert(valid, e) end
                    end
                    cachedEarners = valid
                    -- Get cash once per cycle via game's balances component
                    local cash
                    pcall(function()
                        local tycoon = TycoonMgr.getLocal()
                        if tycoon and BalancesMod then
                            cash = tycoon:GetComponent(BalancesMod):GetCash()
                        end
                    end)
                    for _, e in ipairs(cachedEarners) do
                        if not active then break end
                        local count = 100
                        if e.entity and cash then
                            pcall(function()
                                -- Bypass GetNextUpgradeInfo (checks UpgradeStack power)
                                -- Call GetUpgradePrice directly with cash budget for true max
                                local _, maxCount = e.entity:GetUpgradePrice(nil, 1/0, cash)
                                if maxCount and maxCount > 0 then
                                    count = maxCount
                                end
                            end)
                        end
                        pcall(e.rf.InvokeServer, e.rf, count)
                        task.wait(0.25)
                    end
                end)
            end
            task.wait(0.01)
        end
    end)
    _G.SL_AutoUpgrade = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Wake (per-earner timing, skips managed earners) ───────────────────
do
    local active = false
    local TycoonMod, IncomeMod
    pcall(function()
        TycoonMod = require(RS.Modules.Tycoon.Tycoon)
        IncomeMod = require(RS.Modules.Tycoon.Component.Client.ClientTycoonIncome)
    end)

    -- Per-earner state: tracks next wake time for each earner name
    local earnerTimers = {} -- [name] = nextWakeAt (tick-based)

    task.spawn(function()
        while _G.SellLemonsMain do
            if active then
                pcall(function()
                    if not TycoonMod or not IncomeMod then return end
                    local tycoon = TycoonMod.getLocal()
                    if not tycoon then return end
                    local income = tycoon:GetComponent(IncomeMod)
                    if not income then return end
                    local now = tick()

                    for _, earner in ipairs(CS:GetTagged("Tycoon.Earner")) do
                        if earner:IsDescendantOf(myTycoon) then
                            local name = earner.Name:gsub("%W", "")
                            pcall(function()
                                -- Skip if this earner has a manager (automatic)
                                if income:IsStreamAutomatic(name) then
                                    earnerTimers[name] = nil
                                    return
                                end

                                -- Check game's estimated next earn time
                                -- Returns nil when ready, or seconds remaining
                                local remaining = income:GetStreamEstimatedNextEarnTime(name)

                                if remaining == nil then
                                    -- Earner is ready to be woken
                                    if not earnerTimers[name] or now >= earnerTimers[name] then
                                        income:WakeManualStreamAsync(name)
                                        -- Schedule next check based on the real interval
                                        local ok2, interval = pcall(function()
                                            return income:GetStreamRealInterval(name)
                                        end)
                                        local secs = 2
                                        if ok2 and interval then
                                            pcall(function()
                                                -- Huge number lib: convert to regular number
                                                local HugeMod = require(RS.Modules.Huge)
                                                secs = math.max(0.5, HugeMod.toNumber(interval))
                                            end)
                                        end
                                        earnerTimers[name] = now + secs
                                    end
                                else
                                    -- Not ready yet — schedule wake for when it completes
                                    earnerTimers[name] = now + remaining
                                end
                            end)
                        end
                    end
                end)
            end
            task.wait(2)
        end
    end)
    _G.SL_AutoWake = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto CashVine ──────────────────────────────────────────────────────────
do
    local active = false
    local lastRun = 0
    table.insert(featureTicks, function(now)
        if not active or now - lastRun < 10 then return end
        lastRun = now
        pcall(function()
            for _, vine in ipairs(CS:GetTagged("CashVine")) do
                local rf = findRemoteFunction(vine, "Use")
                if rf then pcall(rf.InvokeServer, rf) end
            end
        end)
    end)
    _G.SL_AutoCashVine = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Cash Drops (invisible TP collection, camera locked) ───────────────
do
    local active = false
    local cam = workspace.CurrentCamera

    local function gatherDrops()
        local drops = {}
        pcall(function()
            local folder = workspace:FindFirstChild("CashDrops")
            if not folder then return end
            for _, drop in ipairs(folder:GetChildren()) do
                local part = drop:IsA("BasePart") and drop
                    or drop:FindFirstChildWhichIsA("BasePart", true)
                if part then
                    table.insert(drops, part.Position)
                end
            end
        end)
        return drops
    end

    task.spawn(function()
        while _G.SellLemonsMain do
            task.wait(5)
            if active then
                pcall(function()
                    local char = PL.Character
                    if not char then return end
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    if not hrp then return end

                    local drops = gatherDrops()
                    if #drops == 0 then return end

                    local fruitApi = _G.SL_AutoFruit
                    local fruitHome = fruitApi and fruitApi.getHome and fruitApi.getHome()
                    local homeCF = fruitHome or char:GetPivot()

                    -- Anchor camera to a stationary part
                    local anchor = Instance.new("Part")
                    anchor.Anchored = true
                    anchor.CanCollide = false
                    anchor.Transparency = 1
                    anchor.Size = Vector3.new(1, 1, 1)
                    anchor.CFrame = homeCF
                    anchor.Parent = workspace
                    local origSubject = cam.CameraSubject
                    cam.CameraSubject = anchor
                    local saved = hideChar(char)

                    for _, pos in ipairs(drops) do
                        if not active then break end
                        char = PL.Character
                        if not char then break end
                        char:PivotTo(CFrame.new(pos))
                        task.wait(0.15)
                    end

                    -- Return home, restore visibility (handles respawn)
                    char = PL.Character
                    if not char then
                        pcall(function()
                            char = PL.CharacterAdded:Wait()
                            task.wait(0.5)
                        end)
                        char = PL.Character
                    end
                    if char then
                        char:PivotTo(homeCF)
                        for _, desc in ipairs(char:GetDescendants()) do
                            if desc:IsA("BasePart") then
                                desc.LocalTransparencyModifier = 0
                            end
                        end
                    end
                    cam.CameraSubject = origSubject or (char and char:FindFirstChildWhichIsA("Humanoid"))
                    anchor:Destroy()
                end)
            end
        end
    end)
    _G.SL_AutoCashDrops = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Phone (only accept when an offer is actually active) ──────────────
do
    local active = false
    local phoneRE = nil
    local connected = false
    local hasOffer = false

    local function findPhoneRE()
        if phoneRE and phoneRE.Parent then return phoneRE end
        phoneRE = nil
        pcall(function()
            if not remotes or not remotes.Parent then return end
            for _, child in ipairs(remotes:GetChildren()) do
                if child.Name == "PhoneOffer" then
                    phoneRE = child
                    return
                end
            end
            if not phoneRE then
                phoneRE = remotes:WaitForChild("PhoneOffer", 3)
            end
        end)
        return phoneRE
    end

    local function tryAccept()
        if not hasOffer then return end
        local re = findPhoneRE()
        if re then pcall(re.FireServer, re, "Accept") end
    end

    local function ensureListener()
        if connected or not remotes or not remotes.Parent then return end
        local re = findPhoneRE()
        if not re then return end
        pcall(function()
            re.OnClientEvent:Connect(function(data)
                if type(data) == "number" then
                    hasOffer = true
                    if active then task.defer(tryAccept) end
                else
                    hasOffer = false
                end
            end)
        end)
        connected = true
    end

    table.insert(featureTicks, function()
        if not active or not remotes then return end
        if not connected or (phoneRE and not phoneRE.Parent) then
            connected = false
            hasOffer = false
            ensureListener()
        end
    end)
    ensureListener()

    _G.SL_AutoPhone = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Powers (buy affordable powers at 0.1s) ───────────────────────────
do
    local active = false
    -- Prices from Config.Powers (raw numbers → log10 for comparison)
    local POWER_PRICES = {
        Manage         = {math.log10(100)},
        WalkSpeed      = {math.log10(400), math.log10(1e9), math.log10(1e27), math.log10(1e72)},
        UpgradeStack   = {math.log10(1000), math.log10(1e12), math.log10(1e33), math.log10(1e63)},
        BuyNext        = {math.log10(1e93)},
        ClickFruitValue= {math.log10(250), math.log10(1e6), math.log10(1e18)},
    }
    local POWER_ORDER = {"Manage", "WalkSpeed", "UpgradeStack", "BuyNext", "ClickFruitValue"}

    local function getPowerLevel(name)
        local level = 0
        pcall(function()
            local powers = myTycoon.Values:FindFirstChild("Powers")
            if powers then
                local perm = powers:FindFirstChild("Permanent")
                local base = powers:GetAttribute(name) or 0
                local permVal = 0
                if perm then permVal = perm:GetAttribute(name) or 0 end
                level = base + permVal
            end
        end)
        return level
    end

    task.spawn(function()
        while _G.SellLemonsMain do
            if active and remotes then
                local investors = getLog10Attr("Investors")
                local rf
                pcall(function() rf = findRemoteFunction(remotes, "UpgradePowerLevel") end)
                if rf then
                    for _, name in ipairs(POWER_ORDER) do
                        local level = getPowerLevel(name)
                        local nextLevel = level + 1
                        local prices = POWER_PRICES[name]
                        local price = prices and prices[nextLevel]
                        if price and investors >= price then
                            pcall(rf.InvokeServer, rf, name)
                        end
                    end
                end
            end
            task.wait(0.1)
        end
    end)
    _G.SL_AutoPowers = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
    }
end

-- ─── Auto Fruit (freeze pos, lock camera, collect fruit) ─────────────────────
do
    local active = false
    local homeCFrame = nil
    local RADIUS = 15
    local cam = workspace.CurrentCamera

    local function gatherFruits()
        local fruits = {}
        pcall(function()
            for _, desc in ipairs(workspace:GetDescendants()) do
                if desc:IsA("ClickDetector") then
                    local part = desc.Parent
                    if part and part:IsA("BasePart") and part.Size.Magnitude < 10 then
                        table.insert(fruits, {pos = part.Position, cd = desc})
                    end
                end
            end
        end)
        return fruits
    end

    task.spawn(function()
        local anchor = nil
        local origSubject = nil

        local function ensureAnchor()
            if anchor and anchor.Parent then return end
            local char = PL.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            anchor = Instance.new("Part")
            anchor.Anchored = true
            anchor.CanCollide = false
            anchor.Transparency = 1
            anchor.Size = Vector3.new(1, 1, 1)
            anchor.CFrame = homeCFrame or (hrp and hrp.CFrame) or CFrame.new()
            anchor.Parent = workspace
            origSubject = cam.CameraSubject
            cam.CameraSubject = anchor
        end

        local function teardown()
            local char = PL.Character
            if not char then
                pcall(function()
                    char = PL.CharacterAdded:Wait()
                    task.wait(0.5)
                end)
                char = PL.Character
            end
            if char then
                for _, desc in ipairs(char:GetDescendants()) do
                    if desc:IsA("BasePart") then
                        desc.LocalTransparencyModifier = 0
                    end
                end
                if homeCFrame then char:PivotTo(homeCFrame) end
            end
            cam.CameraSubject = origSubject or (char and char:FindFirstChildWhichIsA("Humanoid"))
            if anchor then pcall(anchor.Destroy, anchor); anchor = nil end
            origSubject = nil
            homeCFrame = nil
        end

        while _G.SellLemonsMain do
            task.wait(0.5)
            if active then
                pcall(function()
                    local char = PL.Character
                    if not char then return end
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    if not hrp then return end

                    local remaining = gatherFruits()
                    if #remaining == 0 then return end

                    ensureAnchor()
                    hideChar(char)

                    while #remaining > 0 do
                        char = PL.Character
                        if not char or not active then break end

                        local clusterAnchor = remaining[1]
                        local cluster, far = {}, {}
                        for _, f in ipairs(remaining) do
                            if (f.pos - clusterAnchor.pos).Magnitude <= RADIUS then
                                table.insert(cluster, f)
                            else
                                table.insert(far, f)
                            end
                        end

                        for _, f in ipairs(cluster) do
                            if not active then break end
                            char = PL.Character
                            if not char then break end
                            if f.cd and f.cd.Parent then
                                char:PivotTo(CFrame.new(f.pos))
                                task.wait(0.04)
                                pcall(fireclickdetector, f.cd)
                            end
                        end

                        remaining = far
                        task.wait(0.05)
                    end

                    -- Between active cycles: keep anchor alive, just restore char visibility
                    if active then
                        char = PL.Character
                        if char then
                            for _, desc in ipairs(char:GetDescendants()) do
                                if desc:IsA("BasePart") then
                                    desc.LocalTransparencyModifier = 0
                                end
                            end
                        end
                    end
                end)
                -- Teardown if disabled mid-cycle
                if not active then teardown() end
            else
                -- Teardown if disabled between cycles (anchor still alive)
                if anchor then teardown() end
            end
        end
    end)
    _G.SL_AutoFruit = {
        enable   = function()
            active = true
            pcall(function()
                local char = PL.Character
                if char then homeCFrame = char:GetPivot() end
            end)
        end,
        disable  = function() active = false end,
        toggle   = function(val)
            if val == nil then active = not active else active = val end
            if active then
                pcall(function()
                    local char = PL.Character
                    if char then homeCFrame = char:GetPivot() end
                end)
            end
        end,
        isActive = function() return active end,
        getHome  = function() return homeCFrame end,
    }
end

-- ─── Suppress cash-fly bills while Auto Fruit / Auto Drops active ────────────
task.spawn(function()
    while _G.SellLemonsMain do
        local fruitApi = _G.SL_AutoFruit
        local dropApi  = _G.SL_AutoCashDrops
        if (fruitApi and fruitApi.isActive()) or (dropApi and dropApi.isActive()) then
            pcall(function()
                for _, gui in ipairs(CS:GetTagged("UI.CashBalance")) do
                    for _, child in ipairs(gui:GetChildren()) do
                        if child.Name == "Bill" then child:Destroy() end
                    end
                end
            end)
            task.wait(0.1)
        else
            task.wait(0.5)
        end
    end
end)

-- ─── Auto Rebirth (multiplier-based) ────────────────────────────────────────
do
    local active = false
    local rebirthMultiplier = 2
    local rebirthDelay = savedState.rebirthDelay or 5
    local inFlight = false
    local flightStart = 0
    local lastRun = 0
    local readySince = nil
    local ZERO_INVESTOR_THRESHOLD = math.log10(10000) -- rebirth at 10k when investors=0
    table.insert(featureTicks, function(now)
        -- Unstick inFlight after 30s timeout
        if inFlight and now - flightStart > 30 then
            inFlight = false
        end
        if not active or not remotes or inFlight or now - lastRun < 5 then return end
        lastRun = now
        local logCurrent   = getLog10Attr("Investors")
        local logPotential = getPotentialInvestorsLog10()
        local shouldRebirth
        if logCurrent == NEG_INF then
            shouldRebirth = logPotential >= ZERO_INVESTOR_THRESHOLD
        else
            shouldRebirth = logPotential >= logCurrent + math.log10(rebirthMultiplier)
        end
        if not shouldRebirth then
            readySince = nil
            return
        end
        -- Only apply delay once target evolution is reached
        local evoApi = _G.SL_AutoEvolve
        local atEvoLimit = evoApi and evoApi.isLimitEnabled() and evoApi.getEvolution() >= evoApi.getLimit()
        if atEvoLimit then
            if not readySince then readySince = now end
            if now - readySince < rebirthDelay then return end
        end
        readySince = nil
        local rf = findRemoteFunction(remotes, "Rebirth")
        if rf then
            inFlight = true
            flightStart = now
            task.spawn(function()
                pcall(rf.InvokeServer, rf)
                inFlight = false
                upgradesCacheDirty = true
                forcePurchaseUntil = tick() + 15
                task.spawn(cleanupRebirthUI)
            end)
        end
    end)
    _G.SL_AutoRebirth = {
        enable      = function() active = true end,
        disable     = function() active = false end,
        toggle      = function(val) if val == nil then active = not active else active = val end end,
        isActive    = function() return active end,
        setMultiplier = function(n) rebirthMultiplier = math.max(1, n) end,
        getMultiplier = function() return rebirthMultiplier end,
        setDelay    = function(n) rebirthDelay = n; readySince = nil end,
        getDelay    = function() return rebirthDelay end,
        getReadySince = function() return readySince end,
        debug       = function()
            local vals = myTycoon:FindFirstChild("Values")
            if not vals then return "Values folder not found" end
            local inner = vals:FindFirstChild("Values")
            local result = "=== Values.Values ATTRIBUTES ===\n"
            if inner then
                local attrs = {}
                pcall(function() attrs = inner:GetAttributes() end)
                for k, v in pairs(attrs) do result = result .. k .. " = " .. tostring(v) .. "\n" end
            else
                result = result .. "(not found)\n"
            end
            result = result .. "=== READINGS ===\n"
            result = result .. "Cash: " .. tostring(getLog10Attr("Cash")) .. "\n"
            result = result .. "CashSpent: " .. tostring(getLog10Attr("CashSpent")) .. "\n"
            result = result .. "Investors: " .. tostring(getLog10Attr("Investors")) .. "\n"
            result = result .. "InvestorsSpent: " .. tostring(getLog10Attr("InvestorsSpent")) .. "\n"
            result = result .. "PotentialLog10: " .. tostring(getPotentialInvestorsLog10()) .. "\n"
            result = result .. "Multiplier: " .. tostring(rebirthMultiplier) .. "\n"
            return result
        end,
    }
end

-- ─── Auto Evolve (event-driven) ─────────────────────────────────────────────
do
    local active = false
    local inFlight = false
    local evolveLimit = savedState.evolveLimit or 50
    local limitEnabled = savedState.evolveLimitEnabled ~= false
    local evolveConns = {}

    -- Evolution threshold: 10^(13.6 * level + 17.7)
    local function evoThresholdLog10(level)
        return 13.6 * level + 17.7
    end

    local function totalInvestorsLog10()
        local logInv      = getLog10Attr("Investors")
        local logInvSpent = getLog10Attr("InvestorsSpent")
        local logPotential = getPotentialInvestorsLog10()
        return logAdd(logAdd(logInv, logInvSpent), logPotential)
    end

    local function tryEvolve()
        if not active or not remotes or inFlight then return end
        local curEvo = 0
        pcall(function()
            curEvo = myTycoon.Values.Values:GetAttribute("Evolution") or 0
        end)
        if limitEnabled and curEvo >= evolveLimit then return end
        local threshold = evoThresholdLog10(curEvo)
        local total = totalInvestorsLog10()
        if total < threshold then return end
        local rf = findRemoteFunction(remotes, "Evolve")
        if rf then
            inFlight = true
            task.spawn(function()
                pcall(rf.InvokeServer, rf)
                inFlight = false
                task.spawn(cleanupRebirthUI)
            end)
        end
    end

    -- Watch investor-related attributes for changes (reconnect only when Values changes)
    local watchedVals = nil
    local function connectWatchers()
        local vals = nil
        pcall(function() vals = myTycoon:FindFirstChild("Values") end)
        if vals == watchedVals then return end -- already watching this instance
        for _, c in ipairs(evolveConns) do pcall(c.Disconnect, c) end
        evolveConns = {}
        watchedVals = vals
        if not vals then return end
        pcall(function()
            for _, attr in ipairs({"Investors", "InvestorsSpent", "Cash", "CashSpent"}) do
                table.insert(evolveConns, vals:GetAttributeChangedSignal(attr):Connect(tryEvolve))
            end
            local innerVals = vals:FindFirstChild("Values")
            if innerVals then
                table.insert(evolveConns, innerVals:GetAttributeChangedSignal("Evolution"):Connect(tryEvolve))
            end
        end)
    end
    connectWatchers()

    -- Fallback poll — only reconnects if Values instance changed
    table.insert(featureTicks, function()
        if not active then return end
        connectWatchers()
        tryEvolve()
    end)

    _G.SL_AutoEvolve = {
        enable   = function() active = true; connectWatchers(); tryEvolve() end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end
            if active then connectWatchers(); tryEvolve() end
        end,
        isActive = function() return active end,
        setLimit = function(n) evolveLimit = n end,
        getLimit = function() return evolveLimit end,
        setLimitEnabled = function(v) limitEnabled = v end,
        isLimitEnabled  = function() return limitEnabled end,
        getEvolution = function()
            local v = 0
            pcall(function() v = myTycoon.Values.Values:GetAttribute("Evolution") or 0 end)
            return v
        end,
    }
end

-- ─── Auto Ascend ────────────────────────────────────────────────────────────
do
    local active = false
    local inFlight = false
    local lastRun = 0
    local ascendLimit = savedState.ascendLimit or 999
    local ascendLimitOn = savedState.ascendLimitEnabled ~= false
    local function tryAscend()
        if not active or not remotes or inFlight then return end
        if ascendLimitOn then
            local cur = 0
            pcall(function()
                cur = myTycoon.Values.Values:GetAttribute("Ascension") or 0
            end)
            if cur >= ascendLimit then return end
        end
        local count = 0
        pcall(function()
            for _ in pairs(myTycoon.Values.Purchases:GetAttributes()) do
                count = count + 1
            end
        end)
        if count < 453 then return end
        -- Pause Auto Purchase while ascending (all items bought, no need to fire)
        local purchaseApi = _G.SL_AutoPurchase
        local wasPurchasing = purchaseApi and purchaseApi.isActive()
        if purchaseApi then purchaseApi.disable() end
        local rf = findRemoteFunction(remotes, "Ascend")
        if rf then
            inFlight = true
            task.spawn(function()
                pcall(rf.InvokeServer, rf)
                inFlight = false
                -- Resume Auto Purchase immediately after ascend
                if wasPurchasing and purchaseApi then purchaseApi.enable() end
                task.spawn(cleanupRebirthUI)
            end)
        else
            -- No remote found, re-enable if it was on
            if wasPurchasing and purchaseApi then purchaseApi.enable() end
        end
    end

    -- Instant ascend: listen for the last purchase ("StaircasePlatformFinal")
    task.spawn(function()
        while _G.SellLemonsMain do
            pcall(function()
                local purchases = myTycoon.Values.Purchases
                local conn
                conn = purchases:GetAttributeChangedSignal("StaircasePlatformFinal"):Connect(function()
                    if purchases:GetAttribute("StaircasePlatformFinal") then
                        tryAscend()
                    end
                end)
                -- Hold connection alive until tycoon is destroyed (ascension)
                while _G.SellLemonsMain and myTycoon and myTycoon.Parent do
                    task.wait(1)
                end
                pcall(function() conn:Disconnect() end)
            end)
            task.wait(1)
        end
    end)

    -- Fallback poll (in case signal is missed)
    table.insert(featureTicks, function(now)
        if now - lastRun < 0.01 then return end
        lastRun = now
        tryAscend()
    end)
    _G.SL_AutoAscend = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
        getLimit = function() return ascendLimit end,
        setLimit = function(n) ascendLimit = n end,
        isLimitEnabled = function() return ascendLimitOn end,
        setLimitEnabled = function(on) ascendLimitOn = on end,
        getAscension = function()
            local cur = 0
            pcall(function() cur = myTycoon.Values.Values:GetAttribute("Ascension") or 0 end)
            return cur
        end,
    }
end

-- ─── Auto Perma (permanently buys multipliers first, then everything else) ──
do
    local active = false
    local pendingSet = {} -- names currently in-flight (prevents duplicate fires)

    -- Build sorted multiplier list from Balance (highest multiplier first)
    local PERMA_ORDER = {}
    if Balance and Balance.Multipliers then
        for name, mult in pairs(Balance.Multipliers) do
            table.insert(PERMA_ORDER, {name = name, mult = mult})
        end
        table.sort(PERMA_ORDER, function(a, b) return a.mult > b.mult end)
    end

    -- Staircase items that cannot be permanently unlocked
    local BLOCKED = {
        DashStatueMajor=true, DashStatueMinor1=true, DashStatueMinor2=true,
        DepotStatueMajor=true, DepotStatueMinor1=true, DepotStatueMinor2=true,
        Hill1=true, Hill2=true, Hill3=true,
        LabsRoofStaircase=true, LabsSecondFloorStaircase=true,
        LabsStatueMajor=true, LabsStatueMinor1=true, LabsStatueMinor2=true,
        NationalMonument=true,
        RepublicFloor2Staircase1=true, RepublicFloor2Staircase2=true,
        RepublicFloor3Staircase1=true, RepublicFloor3Staircase2=true,
        RepublicStatueMajor=true, RepublicStatueMinor1=true, RepublicStatueMinor2=true,
        RoboticsStaircase1=true, RoboticsStaircase2=true,
        RoboticsStatueMajor=true, RoboticsStatueMinor1=true, RoboticsStatueMinor2=true,
        StaircaseCurve1=true, StaircaseCurve2=true, StaircaseCurve3=true, StaircaseCurve4=true,
        StaircaseCurve5=true, StaircaseCurve6=true, StaircaseCurve7=true, StaircaseCurve8=true,
        StaircaseIntro=true,
        StaircasePlatform1=true, StaircasePlatform2=true, StaircasePlatform3=true, StaircasePlatform4=true,
        StaircasePlatform5=true, StaircasePlatform6=true, StaircasePlatform7=true, StaircasePlatform8=true,
        StaircasePlatformFinal=true,
        StandStatueMajor=true, StandStatueMinor1=true, StandStatueMinor2=true,
        TradingStatueMajor=true, TradingStatueMinor1=true, TradingStatueMinor2=true,
        XStatueMajor=true, XStatueMinor1=true, XStatueMinor2=true,
    }

    local function isPurchased(name)
        local vals = myTycoon:FindFirstChild("Values")
        if not vals then return false, false end
        local purchases = vals:FindFirstChild("Purchases")
        if not purchases then return false, false end
        local owned = purchases:GetAttribute(name) and true or false
        local permFolder = purchases:FindFirstChild("Permanent")
        local perm = permFolder and permFolder:GetAttribute(name) and true or false
        return owned or perm, perm
    end

    local function firePerma(name)
        if BLOCKED[name] or pendingSet[name] then return false end
        local item
        for _, c in ipairs(CS:GetTagged("Tycoon.Purchase")) do
            if c:IsDescendantOf(myTycoon) and c.Name:gsub("%s+", "") == name then
                item = c
                break
            end
        end
        if not item then return false, "no_instance" end
        local rf = findRemoteFunction(item, "Purchase")
        if not rf then return false, "no_remote" end
        pendingSet[name] = true
        task.spawn(function()
            pcall(rf.InvokeServer, rf, true)
            pendingSet[name] = nil
        end)
        task.delay(5, function()
            pendingSet[name] = nil
        end)
        return true
    end

    -- Dedicated loop — scans all items every 0.5s, fires concurrently
    task.spawn(function()
        while _G.SellLemonsMain do
            if active and getPermaSlots() > 0 then
                -- Phase 1: owned-but-not-perma'd multipliers (highest first)
                local multBusy = false
                for _, entry in ipairs(PERMA_ORDER) do
                    if BLOCKED[entry.name] or pendingSet[entry.name] then continue end
                    local owned, perm = false, false
                    pcall(function() owned, perm = isPurchased(entry.name) end)
                    if perm then continue end
                    if owned and firePerma(entry.name) then multBusy = true end
                end
                -- Phase 2: everything owned or available, not perma'd, not blocked
                if not multBusy then
                    pcall(function()
                        for _, item in ipairs(CS:GetTagged("Tycoon.Purchase")) do
                            if item:IsDescendantOf(myTycoon)
                                and (item:GetAttribute("Purchased") or item:GetAttribute("Shown")) then
                                local name = item.Name:gsub("%s+", "")
                                if not BLOCKED[name] and not pendingSet[name] then
                                    local _, perm = isPurchased(name)
                                    if not perm then firePerma(name) end
                                end
                            end
                        end
                    end)
                end
            end
            task.wait(0.5)
        end
    end)

    _G.SL_AutoPerma = {
        enable   = function() active = true end,
        disable  = function() active = false end,
        toggle   = function(val) if val == nil then active = not active else active = val end end,
        isActive = function() return active end,
        hasSlots = function() return getPermaSlots() > 0 end,
        getStatus = function()
            local multRemaining = 0
            local nextMult = nil
            for _, entry in ipairs(PERMA_ORDER) do
                if BLOCKED[entry.name] then continue end
                local owned, perm = false, false
                pcall(function() owned, perm = isPurchased(entry.name) end)
                if owned and not perm then
                    multRemaining = multRemaining + 1
                    if not nextMult then
                        nextMult = entry.name .. " (" .. entry.mult .. "x)"
                    end
                end
            end
            if multRemaining > 0 then
                return "Perma: " .. nextMult .. " [" .. multRemaining .. " mult left]"
            end
            local remaining = 0
            local WHITELIST = _G.SL_PurchaseWhitelist
            pcall(function()
                for _, item in ipairs(CS:GetTagged("Tycoon.Purchase")) do
                    if item:IsDescendantOf(myTycoon)
                        and (item:GetAttribute("Purchased") or item:GetAttribute("Shown")) then
                        local name = item.Name:gsub("%s+", "")
                        if not BLOCKED[name] and not (WHITELIST and WHITELIST[name]) then
                            local _, perm = isPurchased(name)
                            if not perm then remaining = remaining + 1 end
                        end
                    end
                end
            end)
            return remaining > 0 and (remaining .. " remaining") or "All done"
        end,
    }
end

-- ─── Hide Buildings (signal-based, deduped — no polling) ─────────────────────
do
    local active = false
    local hidden = {} -- [inst] = {prop = originalValue, ...}
    local conns = {}
    local tycoonConns = {}

    local function lockPart(inst)
        if hidden[inst] then return end
        if inst:IsA("BasePart") then
            hidden[inst] = {Transparency = inst.Transparency, CanCollide = inst.CanCollide}
            inst.Transparency = 1
            inst.CanCollide = false
            inst.LocalTransparencyModifier = 1
            table.insert(conns, inst:GetPropertyChangedSignal("Transparency"):Connect(function()
                if active and inst.Transparency ~= 1 then inst.Transparency = 1 end
            end))
            table.insert(conns, inst:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
                if active and inst.LocalTransparencyModifier ~= 1 then inst.LocalTransparencyModifier = 1 end
            end))
        elseif inst:IsA("Decal") or inst:IsA("Texture") then
            hidden[inst] = {Transparency = inst.Transparency}
            inst.Transparency = 1
        elseif inst:IsA("Highlight") then
            hidden[inst] = {Enabled = inst.Enabled}
            inst.Enabled = false
            table.insert(conns, inst:GetPropertyChangedSignal("Enabled"):Connect(function()
                if active and inst.Enabled then inst.Enabled = false end
            end))
        end
    end

    local function applyAll()
        local batch = {}
        for _, child in ipairs(workspace:GetChildren()) do
            if child.Name:match("^Tycoon%d") then
                for _, desc in ipairs(child:GetDescendants()) do
                    table.insert(batch, desc)
                end
                table.insert(tycoonConns, child.DescendantAdded:Connect(function(desc)
                    if active then task.delay(0, lockPart, desc) end
                end))
            end
        end
        local pg = PL:FindFirstChild("PlayerGui")
        if pg then
            table.insert(tycoonConns, pg.DescendantAdded:Connect(function(desc)
                if active and desc:IsA("Highlight") then task.delay(0, lockPart, desc) end
            end))
        end
        -- Process in chunks across frames to avoid spike
        task.spawn(function()
            for i, desc in ipairs(batch) do
                if not active then break end
                lockPart(desc)
                if i % 200 == 0 then task.wait() end
            end
        end)
    end

    local function restoreAll()
        for _, cn in ipairs(conns) do pcall(cn.Disconnect, cn) end
        for _, cn in ipairs(tycoonConns) do pcall(cn.Disconnect, cn) end
        conns = {}
        tycoonConns = {}
        for inst, saved in pairs(hidden) do
            pcall(function()
                for prop, val in pairs(saved) do
                    inst[prop] = val
                end
                if inst:IsA("BasePart") then
                    inst.LocalTransparencyModifier = 0
                end
            end)
        end
        hidden = {}
    end

    -- Re-apply hiding when new tycoons appear (after rebirth/evolve/ascend)
    CS:GetInstanceAddedSignal("Tycoon"):Connect(function(tycoon)
        if not active then return end
        task.delay(0.5, function()
            if not active then return end
            -- Clean stale entries from hidden (destroyed instances)
            for inst in pairs(hidden) do
                if not inst.Parent then hidden[inst] = nil end
            end
            -- Apply to the new tycoon
            local batch = {}
            pcall(function()
                for _, desc in ipairs(tycoon:GetDescendants()) do
                    table.insert(batch, desc)
                end
            end)
            table.insert(tycoonConns, tycoon.DescendantAdded:Connect(function(desc)
                if active then task.delay(0, lockPart, desc) end
            end))
            task.spawn(function()
                for i, desc in ipairs(batch) do
                    if not active then break end
                    lockPart(desc)
                    if i % 200 == 0 then task.wait() end
                end
            end)
        end)
    end)

    _G.SL_HideBuildings = {
        enable   = function() active = true; applyAll() end,
        disable  = function() active = false; restoreAll() end,
        toggle   = function(val)
            if val == nil then active = not active else active = val end
            if active then applyAll() else restoreAll() end
        end,
        isActive = function() return active end,
    }
end

-- ─── Single master loop (1 coroutine, calls all features) ───────────────────
task.spawn(function()
    while _G.SellLemonsMain do
        -- Refresh remotes if stale (folder recreated after rebirth)
        if not remotes or not remotes.Parent then
            local oldRemotes = remotes
            pcall(function() remotes = myTycoon:FindFirstChild("Remotes") end)
            if remotes and remotes ~= oldRemotes then
                connectRebirthListener()
            end
        end
        local now = tick()
        for _, fn in ipairs(featureTicks) do
            pcall(fn, now)
        end
        task.wait(0.5)
    end
end)

-- ═══════════════════════════════════════════════════════════════════════════════
-- GUI
-- ═══════════════════════════════════════════════════════════════════════════════

-- ─── Theme ────────────────────────────────────────────────────────────────────
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

-- ─── Layout constants ─────────────────────────────────────────────────────────
local W      = 299
local HALF_W = 141
local TAB_W  = math.floor(W / 2)
local PANEL_H_CONTROLS = 227
local PANEL_H_PRESTIGE = 393

-- ─── Number suffix parser ────────────────────────────────────────────────────
local SUFFIX_MAP = {
    k = 1e3, m = 1e6, b = 1e9, t = 1e12,
    qd = 1e15, qn = 1e18, sx = 1e21, sp = 1e24,
    oc = 1e27, no = 1e30, dc = 1e33,
}
local function parseNumber(text)
    if not text then return nil end
    text = text:gsub("%s+", ""):gsub(",", ""):lower()
    local num, suffix = text:match("^([%d%.]+)(%a+)$")
    if num and suffix then
        local n = tonumber(num)
        local mul = SUFFIX_MAP[suffix]
        if n and mul then return n * mul end
        return nil
    end
    return tonumber(text)
end

-- ─── Style helpers ────────────────────────────────────────────────────────────
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

-- ─── Root ScreenGui ───────────────────────────────────────────────────────────
local g = Instance.new("ScreenGui")
g.ResetOnSpawn   = false
g.Name           = "SellLemonsMain"
g.IgnoreGuiInset = true
g.Parent         = PL.PlayerGui

-- ─── Panel ────────────────────────────────────────────────────────────────────
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

-- ─── Bubble ───────────────────────────────────────────────────────────────────
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

-- ─── Tooltip ──────────────────────────────────────────────────────────────────
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

-- ─── Title bar ────────────────────────────────────────────────────────────────
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
titleLbl.Text     = "Devilish Scripts | Sell Lemons"
titleLbl.TextSize = 12
titleLbl.Font     = Enum.Font.GothamBold
titleLbl.TextXAlignment = Enum.TextXAlignment.Left

-- ─── Minimize button ──────────────────────────────────────────────────────────
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

-- ─── Close button ─────────────────────────────────────────────────────────────
local CTRL_DEFS, PRESTIGE_DEFS -- forward declarations for close handler

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
    for _, defs in ipairs({CTRL_DEFS, PRESTIGE_DEFS}) do
        for _, def in ipairs(defs) do
            local api = def.getApi()
            if api then pcall(function() api.disable() end) end
        end
    end
    g:Destroy()
    _G.SellLemonsMain = nil
end)
setTooltip(closeBtn, "Close panel and disable all scripts")

-- ─── Drag ─────────────────────────────────────────────────────────────────────
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

-- ─── Tab bar ──────────────────────────────────────────────────────────────────
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

local tabPrestige = Instance.new("TextButton", tabBar)
tabPrestige.Size = UDim2.new(0, W - TAB_W, 1, 0)
tabPrestige.Position = UDim2.new(0, TAB_W, 0, 0)
tabPrestige.BackgroundColor3 = C_TAB_OFF
tabPrestige.TextColor3 = C_TXT_OFF
tabPrestige.Text     = "Prestige"
tabPrestige.TextSize = 10
tabPrestige.Font     = Enum.Font.GothamBold
tabPrestige.BorderSizePixel = 0
Instance.new("UICorner", tabPrestige).CornerRadius = UDim.new(0, 5)

local tabDiv = Instance.new("Frame", panel)
tabDiv.Size = UDim2.new(1, 0, 0, 1)
tabDiv.Position = UDim2.new(0, 0, 0, 60)
tabDiv.BackgroundColor3 = C_DIV
tabDiv.BorderSizePixel  = 0
mkGrad(tabDiv, C_DIV, Color3.fromRGB(150, 20, 55), 0)

-- ─── Content frames (explicit sizes for child layout) ────────────────────────
local controlsFrame = Instance.new("ScrollingFrame", panel)
controlsFrame.Size = UDim2.new(0, W, 0, PANEL_H_CONTROLS - 61)
controlsFrame.Position = UDim2.new(0, 0, 0, 61)
controlsFrame.BackgroundTransparency = 1
controlsFrame.BorderSizePixel = 0
controlsFrame.CanvasSize = UDim2.new(0, 0, 0, 210)
controlsFrame.ScrollBarThickness = 3
controlsFrame.ScrollBarImageColor3 = C_STROKE
controlsFrame.ScrollBarImageTransparency = 0.3
controlsFrame.AutomaticCanvasSize = Enum.AutomaticSize.None
controlsFrame.ScrollingDirection = Enum.ScrollingDirection.Y
controlsFrame.ElasticBehavior = Enum.ElasticBehavior.Never

local prestigeFrame = Instance.new("Frame", panel)
prestigeFrame.Size = UDim2.new(0, W, 0, PANEL_H_PRESTIGE - 61)
prestigeFrame.Position = UDim2.new(0, 0, 0, 61)
prestigeFrame.BackgroundTransparency = 1
prestigeFrame.BorderSizePixel = 0
prestigeFrame.Visible = false

-- ─── Toggle definitions ──────────────────────────────────────────────────────
CTRL_DEFS = {
    {key = "autoPurchase", label = "Auto Purchase", getApi = function() return _G.SL_AutoPurchase end, tip = "Buys next affordable building"},
    {key = "autoUpgrade",  label = "Auto Upgrade",  getApi = function() return _G.SL_AutoUpgrade end,  tip = "Max upgrades all earners"},
    {key = "autoWake",     label = "Auto Wake",     getApi = function() return _G.SL_AutoWake end,     tip = "Collects income from idle earners"},
    {key = "autoCashVine", label = "Auto CashVine", getApi = function() return _G.SL_AutoCashVine end, tip = "Collects cash vine when ready"},
    {key = "autoCashDrops",label = "Auto Drops",    getApi = function() return _G.SL_AutoCashDrops end,tip = "Auto-redeems cash drops"},
    {key = "autoPhone",    label = "Auto Phone",    getApi = function() return _G.SL_AutoPhone end,    tip = "Accepts phone offers automatically"},
    {key = "autoPowers",   label = "Auto Powers",   getApi = function() return _G.SL_AutoPowers end,   tip = "Buys affordable power upgrades"},
    {key = "autoFruit",    label = "Auto Fruit",    getApi = function() return _G.SL_AutoFruit end,    tip = "Freezes position, collects fruit, returns"},
    {key = "hideBuildings",label = "Hide Buildings",getApi = function() return _G.SL_HideBuildings end,tip = "Hides all tycoon buildings for FPS"},
}

PRESTIGE_DEFS = {
    {key = "autoRebirth", label = "Auto Rebirth", getApi = function() return _G.SL_AutoRebirth end, tip = "Rebirths when requirements met"},
    {key = "autoEvolve",  label = "Auto Evolve",  getApi = function() return _G.SL_AutoEvolve end,  tip = "Evolves to next fruit when ready"},
    {key = "autoAscend",  label = "Auto Ascend",  getApi = function() return _G.SL_AutoAscend end,  tip = "Ascends when requirements met"},
    {key = "autoPerma",   label = "Auto Perma",   getApi = function() return _G.SL_AutoPerma end,   tip = "Perma buys all multipliers first, then everything else"},
}

-- ─── makeToggleBtn ────────────────────────────────────────────────────────────
local refreshFns = {}

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

-- ─── Controls tab: toggles ───────────────────────────────────────────────────
for i, def in ipairs(CTRL_DEFS) do
    local col = (i - 1) % 2
    local row = math.floor((i - 1) / 2)
    local x = col == 0 and 8 or 150
    local y = 6 + row * 32
    makeToggleBtn(controlsFrame, def, x, HALF_W, y)
end

-- ─── Rejoin button (bottom of Controls tab) ────────────────────────────────
do
    local rejoinBtn = Instance.new("TextButton", controlsFrame)
    rejoinBtn.Size = UDim2.new(0, W - 16, 0, 28)
    rejoinBtn.Position = UDim2.new(0, 8, 0, 170)
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
        -- queue script re-execution if the executor supports it
        pcall(function()
            if queue_on_teleport then
                queue_on_teleport('loadstring(readfile("scripts/sell_lemons.lua"))()')
            end
        end)
        -- TeleportToPlaceInstance works client-side and preserves the server instance
        local ok = pcall(function() TS:TeleportToPlaceInstance(pid, jid) end)
        if not ok then
            -- Fallback: plain Teleport (may land on a different server)
            pcall(function() TS:Teleport(pid) end)
        end
    end)
    setTooltip(rejoinBtn, "Rejoin this server (works in private servers)")
end

-- ─── Prestige tab: 3 toggles + status ────────────────────────────────────────
for i, def in ipairs(PRESTIGE_DEFS) do
    local col = (i - 1) % 2
    local row = math.floor((i - 1) / 2)
    local x = col == 0 and 8 or 150
    local y = 6 + row * 32
    makeToggleBtn(prestigeFrame, def, x, HALF_W, y)
end

hLine(prestigeFrame, 72)

-- ─── Ascend limit input + toggle ─────────────────────────────────────────────
do
    local ASC_Y = 78
    local ASC_X = 8
    local savedAscLimit = savedState.ascendLimit or 999
    local savedAscLimitOn = savedState.ascendLimitEnabled ~= false

    local ascToggle = Instance.new("TextButton", prestigeFrame)
    ascToggle.Size = UDim2.new(0, 14, 0, 14)
    ascToggle.Position = UDim2.new(0, ASC_X, 0, ASC_Y)
    ascToggle.TextSize = 10
    ascToggle.Font = Enum.Font.GothamBold
    ascToggle.BorderSizePixel = 0
    Instance.new("UICorner", ascToggle).CornerRadius = UDim.new(0, 3)

    local ascLabel = Instance.new("TextLabel", prestigeFrame)
    ascLabel.Size = UDim2.new(0, 75, 0, 14)
    ascLabel.Position = UDim2.new(0, ASC_X + 18, 0, ASC_Y)
    ascLabel.BackgroundTransparency = 1
    ascLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    ascLabel.TextSize = 10
    ascLabel.Font = Enum.Font.GothamBold
    ascLabel.TextXAlignment = Enum.TextXAlignment.Left
    ascLabel.Text = "Ascend limit:"

    local ascBox = Instance.new("TextBox", prestigeFrame)
    ascBox.Size = UDim2.new(0, 40, 0, 22)
    ascBox.Position = UDim2.new(0, ASC_X + 96, 0, ASC_Y - 4)
    ascBox.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
    ascBox.TextColor3 = Color3.fromRGB(220, 200, 255)
    ascBox.PlaceholderText = "e.g. 50"
    ascBox.PlaceholderColor3 = Color3.fromRGB(100, 80, 130)
    ascBox.Text = tostring(savedAscLimit)
    ascBox.TextSize = 12
    ascBox.Font = Enum.Font.GothamBold
    ascBox.BorderSizePixel = 0
    ascBox.ClearTextOnFocus = false
    Instance.new("UICorner", ascBox).CornerRadius = UDim.new(0, 5)
    mkStroke(ascBox, C_STROKE, 1, 0.3)

    local ascStatus = Instance.new("TextLabel", prestigeFrame)
    ascStatus.Size = UDim2.new(0, 120, 0, 22)
    ascStatus.Position = UDim2.new(0, ASC_X + 143, 0, ASC_Y - 4)
    ascStatus.BackgroundTransparency = 1
    ascStatus.TextColor3 = Color3.fromRGB(170, 150, 210)
    ascStatus.TextSize = 10
    ascStatus.Font = Enum.Font.GothamMedium
    ascStatus.TextXAlignment = Enum.TextXAlignment.Left
    ascStatus.Text = ""

    local function refreshAscToggle()
        local api = _G.SL_AutoAscend
        local on = api and api.isLimitEnabled() or savedAscLimitOn
        ascToggle.BackgroundColor3 = on and Color3.fromRGB(60, 180, 80) or Color3.fromRGB(120, 40, 40)
        ascToggle.Text = on and "V" or ""
        ascToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        ascBox.TextTransparency = on and 0 or 0.5
    end
    refreshAscToggle()

    ascToggle.MouseButton1Click:Connect(function()
        local api = _G.SL_AutoAscend
        local newVal = not (api and api.isLimitEnabled() or savedAscLimitOn)
        savedAscLimitOn = newVal
        if api then api.setLimitEnabled(newVal) end
        local state = loadState()
        state.ascendLimitEnabled = newVal
        saveState(state)
        refreshAscToggle()
    end)

    table.insert(refreshFns, function()
        local api = _G.SL_AutoAscend
        local cur = api and api.getAscension() or 0
        local limOn = api and api.isLimitEnabled() or savedAscLimitOn
        if limOn then
            local lim = api and api.getLimit() or 999
            ascStatus.Text = "Current: " .. cur .. " / " .. lim
        else
            ascStatus.Text = "Current: " .. cur .. " (no limit)"
        end
        refreshAscToggle()
    end)

    local function applyAscendLimit(text)
        local n = tonumber(text)
        if not n then return end
        n = math.floor(n)
        n = math.max(1, n)
        ascBox.Text = tostring(n)
        local api = _G.SL_AutoAscend
        if api then api.setLimit(n) end
        local state = loadState()
        state.ascendLimit = n
        saveState(state)
    end

    ascBox.FocusLost:Connect(function()
        applyAscendLimit(ascBox.Text)
    end)
    applyAscendLimit(savedAscLimit)
end

hLine(prestigeFrame, 104)

-- ─── Evolve limit input (1–50) + toggle + live evolution readout ─────────────
do
    local EVO_Y = 110
    local EVO_X = 8
    local savedLimit = savedState.evolveLimit or 50
    local savedLimitOn = savedState.evolveLimitEnabled ~= false

    -- Toggle button for evolve limit
    local evoToggle = Instance.new("TextButton", prestigeFrame)
    evoToggle.Size = UDim2.new(0, 14, 0, 14)
    evoToggle.Position = UDim2.new(0, EVO_X, 0, EVO_Y)
    evoToggle.TextSize = 10
    evoToggle.Font = Enum.Font.GothamBold
    evoToggle.BorderSizePixel = 0
    Instance.new("UICorner", evoToggle).CornerRadius = UDim.new(0, 3)

    local evoLabel = Instance.new("TextLabel", prestigeFrame)
    evoLabel.Size = UDim2.new(0, 75, 0, 14)
    evoLabel.Position = UDim2.new(0, EVO_X + 18, 0, EVO_Y)
    evoLabel.BackgroundTransparency = 1
    evoLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    evoLabel.TextSize = 10
    evoLabel.Font = Enum.Font.GothamBold
    evoLabel.TextXAlignment = Enum.TextXAlignment.Left
    evoLabel.Text = "Evolve limit:"

    local evoBox = Instance.new("TextBox", prestigeFrame)
    evoBox.Size = UDim2.new(0, 40, 0, 22)
    evoBox.Position = UDim2.new(0, EVO_X + 96, 0, EVO_Y - 4)
    evoBox.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
    evoBox.TextColor3 = Color3.fromRGB(220, 200, 255)
    evoBox.PlaceholderText = "1-50"
    evoBox.PlaceholderColor3 = Color3.fromRGB(100, 80, 130)
    evoBox.Text = tostring(savedLimit)
    evoBox.TextSize = 12
    evoBox.Font = Enum.Font.GothamBold
    evoBox.BorderSizePixel = 0
    evoBox.ClearTextOnFocus = false
    Instance.new("UICorner", evoBox).CornerRadius = UDim.new(0, 5)
    mkStroke(evoBox, C_STROKE, 1, 0.3)

    local evoStatus = Instance.new("TextLabel", prestigeFrame)
    evoStatus.Size = UDim2.new(0, 120, 0, 22)
    evoStatus.Position = UDim2.new(0, EVO_X + 143, 0, EVO_Y - 4)
    evoStatus.BackgroundTransparency = 1
    evoStatus.TextColor3 = Color3.fromRGB(170, 150, 210)
    evoStatus.TextSize = 10
    evoStatus.Font = Enum.Font.GothamMedium
    evoStatus.TextXAlignment = Enum.TextXAlignment.Left
    evoStatus.Text = ""

    local function refreshEvoToggle()
        local api = _G.SL_AutoEvolve
        local on = api and api.isLimitEnabled() or savedLimitOn
        evoToggle.BackgroundColor3 = on and Color3.fromRGB(60, 180, 80) or Color3.fromRGB(120, 40, 40)
        evoToggle.Text = on and "V" or ""
        evoToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        evoBox.TextTransparency = on and 0 or 0.5
    end
    refreshEvoToggle()

    evoToggle.MouseButton1Click:Connect(function()
        local api = _G.SL_AutoEvolve
        local newVal = not (api and api.isLimitEnabled() or savedLimitOn)
        savedLimitOn = newVal
        if api then api.setLimitEnabled(newVal) end
        local state = loadState()
        state.evolveLimitEnabled = newVal
        saveState(state)
        refreshEvoToggle()
    end)

    table.insert(refreshFns, function()
        local api = _G.SL_AutoEvolve
        local cur = api and api.getEvolution() or 0
        local limOn = api and api.isLimitEnabled() or savedLimitOn
        if limOn then
            local lim = api and api.getLimit() or 50
            evoStatus.Text = "Current: " .. cur .. " / " .. lim
        else
            evoStatus.Text = "Current: " .. cur .. " (no limit)"
        end
        refreshEvoToggle()
    end)

    local function applyEvolveLimit(text)
        local n = tonumber(text)
        if not n then return end
        n = math.floor(n)
        n = math.max(1, math.min(50, n))
        evoBox.Text = tostring(n)
        local api = _G.SL_AutoEvolve
        if api then api.setLimit(n) end
        local state = loadState()
        state.evolveLimit = n
        saveState(state)
    end

    evoBox.FocusLost:Connect(function()
        applyEvolveLimit(evoBox.Text)
    end)
    applyEvolveLimit(savedLimit)
end

hLine(prestigeFrame, 136)

-- ─── Rebirth delay slider (1–60s) ───────────────────────────────────────────
do
    local SLIDER_Y = 142
    local SLIDER_X = 8
    local TRACK_W = W - 16 - 50 -- room for value label
    local savedDelay = savedState.rebirthDelay or 5

    local delayLabel = Instance.new("TextLabel", prestigeFrame)
    delayLabel.Size = UDim2.new(0, 90, 0, 14)
    delayLabel.Position = UDim2.new(0, SLIDER_X, 0, SLIDER_Y)
    delayLabel.BackgroundTransparency = 1
    delayLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    delayLabel.TextSize = 11
    delayLabel.Font = Enum.Font.GothamBold
    delayLabel.TextXAlignment = Enum.TextXAlignment.Left
    delayLabel.Text = "Rebirth delay:"

    local delayVal = Instance.new("TextLabel", prestigeFrame)
    delayVal.Size = UDim2.new(0, 40, 0, 14)
    delayVal.Position = UDim2.new(0, W - 8 - 40, 0, SLIDER_Y)
    delayVal.BackgroundTransparency = 1
    delayVal.TextColor3 = Color3.fromRGB(220, 200, 255)
    delayVal.TextSize = 11
    delayVal.Font = Enum.Font.GothamBold
    delayVal.TextXAlignment = Enum.TextXAlignment.Right
    delayVal.Text = savedDelay .. "s"

    local delayDesc = Instance.new("TextLabel", prestigeFrame)
    delayDesc.Size = UDim2.new(0, W - 16, 0, 12)
    delayDesc.Position = UDim2.new(0, SLIDER_X, 0, SLIDER_Y + 14)
    delayDesc.BackgroundTransparency = 1
    delayDesc.TextColor3 = Color3.fromRGB(140, 120, 170)
    delayDesc.TextSize = 8
    delayDesc.Font = Enum.Font.GothamMedium
    delayDesc.TextXAlignment = Enum.TextXAlignment.Left
    delayDesc.Text = "Waits this long before rebirthing once target evolution is reached"

    local track = Instance.new("Frame", prestigeFrame)
    track.Size = UDim2.new(0, TRACK_W, 0, 6)
    track.Position = UDim2.new(0, SLIDER_X, 0, SLIDER_Y + 28)
    track.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
    track.BorderSizePixel = 0
    Instance.new("UICorner", track).CornerRadius = UDim.new(0, 3)
    mkStroke(track, C_STROKE, 1, 0.5)

    local fill = Instance.new("Frame", track)
    fill.Size = UDim2.new((savedDelay - 1) / 59, 0, 1, 0)
    fill.BackgroundColor3 = Color3.fromRGB(130, 60, 200)
    fill.BorderSizePixel = 0
    Instance.new("UICorner", fill).CornerRadius = UDim.new(0, 3)

    local knob = Instance.new("Frame", track)
    knob.Size = UDim2.new(0, 12, 0, 12)
    knob.AnchorPoint = Vector2.new(0.5, 0.5)
    knob.Position = UDim2.new((savedDelay - 1) / 59, 0, 0.5, 0)
    knob.BackgroundColor3 = Color3.fromRGB(200, 160, 255)
    knob.BorderSizePixel = 0
    Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

    local dragging = false
    local function setSlider(frac)
        frac = math.clamp(frac, 0, 1)
        local val = math.floor(frac * 59 + 1.5)
        val = math.clamp(val, 1, 60)
        local normFrac = (val - 1) / 59
        knob.Position = UDim2.new(normFrac, 0, 0.5, 0)
        fill.Size = UDim2.new(normFrac, 0, 1, 0)
        delayVal.Text = val .. "s"
        local api = _G.SL_AutoRebirth
        if api then api.setDelay(val) end
        local state = loadState()
        state.rebirthDelay = val
        saveState(state)
    end

    local function inputToFrac(input)
        local absPos = track.AbsolutePosition.X
        local absSize = track.AbsoluteSize.X
        if absSize == 0 then return 0 end
        return (input.Position.X - absPos) / absSize
    end

    track.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            setSlider(inputToFrac(input))
        end
    end)
    knob.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
        end
    end)
    UIS.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            setSlider(inputToFrac(input))
        end
    end)
    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)

    -- Apply saved value
    local api = _G.SL_AutoRebirth
    if api then api.setDelay(savedDelay) end
end

hLine(prestigeFrame, 182)

-- ─── Rebirth multiplier input (supports suffixes) ────────────────────────────
do
    local INPUT_Y = 188
    local INPUT_X = 8
    local savedMult = savedState.rebirthMultiplier or 2

    local inputLabel = Instance.new("TextLabel", prestigeFrame)
    inputLabel.Size = UDim2.new(0, 120, 0, 14)
    inputLabel.Position = UDim2.new(0, INPUT_X, 0, INPUT_Y)
    inputLabel.BackgroundTransparency = 1
    inputLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    inputLabel.TextSize = 10
    inputLabel.Font = Enum.Font.GothamBold
    inputLabel.TextXAlignment = Enum.TextXAlignment.Left
    inputLabel.Text = "Rebirth multiplier:"

    local inputBox = Instance.new("TextBox", prestigeFrame)
    inputBox.Size = UDim2.new(0, 70, 0, 22)
    inputBox.Position = UDim2.new(0, INPUT_X + 124, 0, INPUT_Y - 4)
    inputBox.BackgroundColor3 = Color3.fromRGB(30, 15, 50)
    inputBox.TextColor3 = Color3.fromRGB(220, 200, 255)
    inputBox.PlaceholderText = "e.g. 100M"
    inputBox.PlaceholderColor3 = Color3.fromRGB(100, 80, 130)
    inputBox.Text = tostring(savedMult)
    inputBox.TextSize = 12
    inputBox.Font = Enum.Font.GothamBold
    inputBox.BorderSizePixel = 0
    inputBox.ClearTextOnFocus = false
    Instance.new("UICorner", inputBox).CornerRadius = UDim.new(0, 5)
    mkStroke(inputBox, C_STROKE, 1, 0.3)

    local suffixLabel = Instance.new("TextLabel", prestigeFrame)
    suffixLabel.Size = UDim2.new(0, 14, 0, 22)
    suffixLabel.Position = UDim2.new(0, INPUT_X + 196, 0, INPUT_Y - 4)
    suffixLabel.BackgroundTransparency = 1
    suffixLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    suffixLabel.TextSize = 11
    suffixLabel.Font = Enum.Font.GothamBold
    suffixLabel.Text = "x"

    -- Suffix reference table
    local suffixRef = Instance.new("TextLabel", prestigeFrame)
    suffixRef.Size = UDim2.new(0, W - 16, 0, 48)
    suffixRef.Position = UDim2.new(0, INPUT_X, 0, INPUT_Y + 22)
    suffixRef.BackgroundColor3 = Color3.fromRGB(20, 10, 35)
    suffixRef.TextColor3 = Color3.fromRGB(150, 130, 190)
    suffixRef.TextSize = 9
    suffixRef.Font = Enum.Font.GothamMedium
    suffixRef.TextXAlignment = Enum.TextXAlignment.Left
    suffixRef.TextYAlignment = Enum.TextYAlignment.Top
    suffixRef.TextWrapped = true
    suffixRef.BorderSizePixel = 0
    Instance.new("UICorner", suffixRef).CornerRadius = UDim.new(0, 4)
    Instance.new("UIPadding", suffixRef).PaddingLeft = UDim.new(0, 4)
    suffixRef.Text = "Accepted Suffixes:\nK=1,000  M=1M  B=1B  T=1T  Qd=1Qd  Qn=1Qn\nSx=1Sx  Sp=1Sp  Oc=1Oc  No=1No  Dc=1Dc"

    local function fmtDisplay(n)
        if n < 1000 then return tostring(n) end
        local order = {"Dc","No","Oc","Sp","Sx","Qn","Qd","T","B","M","K"}
        local vals = {1e33,1e30,1e27,1e24,1e21,1e18,1e15,1e12,1e9,1e6,1e3}
        for i, v in ipairs(vals) do
            if n >= v then
                local d = n / v
                if d == math.floor(d) then return string.format("%d%s", d, order[i]) end
                return string.format("%.1f%s", d, order[i])
            end
        end
        return tostring(n)
    end

    local function applyMultiplier(text)
        local n = parseNumber(tostring(text))
        if not n then return end
        n = math.floor(n)
        n = math.max(1, n)
        inputBox.Text = fmtDisplay(n)
        local api = _G.SL_AutoRebirth
        if api then api.setMultiplier(n) end
        local state = loadState()
        state.rebirthMultiplier = n
        saveState(state)
    end

    inputBox.FocusLost:Connect(function()
        applyMultiplier(inputBox.Text)
    end)

    applyMultiplier(savedMult)
end

-- ─── Ascend progress counter ─────────────────────────────────────────────────
do
    local ascendLabel = Instance.new("TextLabel", prestigeFrame)
    ascendLabel.Size = UDim2.new(0, W - 16, 0, 14)
    ascendLabel.Position = UDim2.new(0, 8, 0, 262)
    ascendLabel.BackgroundTransparency = 1
    ascendLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    ascendLabel.TextSize = 10
    ascendLabel.Font = Enum.Font.GothamBold
    ascendLabel.TextXAlignment = Enum.TextXAlignment.Left
    ascendLabel.Text = "Ascend Requirement: ?/453"

    local function updateAscendCount()
        local count = 0
        pcall(function()
            for _, item in ipairs(CS:GetTagged("Tycoon.Purchase")) do
                if item:IsDescendantOf(myTycoon) and item:GetAttribute("Purchased") then
                    count = count + 1
                end
            end
        end)
        local left = 453 - count
        ascendLabel.Text = "Ascend Requirement: " .. count .. "/453 | " .. left .. " until Ascension Available"
    end

    _G.SL_UpdateAscendCount = updateAscendCount
    table.insert(refreshFns, updateAscendCount)
end

-- ─── Rebirth status label (live investor readout) ────────────────────────────
do
    local SUFFIXES = {"", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc"}
    local function fmtHuge(log10val)
        if log10val == NEG_INF or log10val ~= log10val then return "0" end
        if log10val < 3 then return string.format("%.0f", 10 ^ log10val) end
        local tier = math.floor(log10val / 3)
        if tier + 1 > #SUFFIXES then
            return string.format("%.1fe%d", 10 ^ (log10val - math.floor(log10val)), math.floor(log10val))
        end
        return string.format("%.1f%s", 10 ^ (log10val - tier * 3), SUFFIXES[tier + 1])
    end

    local statusLabel = Instance.new("TextLabel", prestigeFrame)
    statusLabel.Size = UDim2.new(0, W - 16, 0, 24)
    statusLabel.Position = UDim2.new(0, 8, 0, 298)
    statusLabel.BackgroundTransparency = 1
    statusLabel.TextColor3 = Color3.fromRGB(170, 150, 210)
    statusLabel.TextSize = 9
    statusLabel.Font = Enum.Font.GothamMedium
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    statusLabel.TextWrapped = true
    statusLabel.Text = ""

    table.insert(refreshFns, function()
        local logInv  = getLog10Attr("Investors")
        local logGain = getPotentialInvestorsLog10()
        local api = _G.SL_AutoRebirth
        local mult = api and api.getMultiplier() or 2
        local target
        if logInv == NEG_INF then
            target = "10K (0 inv)"
        else
            target = fmtHuge(logInv + math.log10(mult))
        end
        statusLabel.Text = "Inv: " .. fmtHuge(logInv) .. " | Gain: " .. fmtHuge(logGain) .. " | Target: " .. target
    end)
end

-- ─── Auto Perma status label ────────────────────────────────────────────────
do
    local permaLabel = Instance.new("TextLabel", prestigeFrame)
    permaLabel.Size = UDim2.new(0, W - 16, 0, 14)
    permaLabel.Position = UDim2.new(0, 8, 0, 278)
    permaLabel.BackgroundTransparency = 1
    permaLabel.TextColor3 = Color3.fromRGB(215, 190, 255)
    permaLabel.TextSize = 10
    permaLabel.Font = Enum.Font.GothamBold
    permaLabel.TextXAlignment = Enum.TextXAlignment.Left
    permaLabel.Text = "Perma: ..."

    table.insert(refreshFns, function()
        local api = _G.SL_AutoPerma
        if not api then permaLabel.Text = "Perma: N/A" return end
        local slots = getPermaSlots()
        local status = api.getStatus()
        permaLabel.Text = "Perma: " .. status .. " | Unlocks Available: " .. slots
    end)
end

-- ─── State restoration ───────────────────────────────────────────────────────
for _, def in ipairs(CTRL_DEFS) do
    if savedState[def.key] then
        local api = def.getApi()
        if api then pcall(function() api.enable() end) end
    end
end
for _, def in ipairs(PRESTIGE_DEFS) do
    if savedState[def.key] then
        local api = def.getApi()
        if api then pcall(function() api.enable() end) end
    end
end
-- Refresh all buttons after state restore
for _, fn in ipairs(refreshFns) do pcall(fn) end

-- ─── Tab switching ────────────────────────────────────────────────────────────
local function showTab(name)
    controlsFrame.Visible = (name == "controls")
    prestigeFrame.Visible = (name == "prestige")
    local function setTab(btn, on)
        btn.BackgroundColor3 = on and C_TAB_ON or C_TAB_OFF
        btn.TextColor3       = on and C_TXT_ON or C_TXT_OFF
    end
    setTab(tabControls, name == "controls")
    setTab(tabPrestige, name == "prestige")
    panel.Size = UDim2.new(0, W, 0, name == "controls" and PANEL_H_CONTROLS or PANEL_H_PRESTIGE)
end

tabControls.MouseButton1Click:Connect(function() showTab("controls") end)
tabPrestige.MouseButton1Click:Connect(function() showTab("prestige") end)
showTab("controls")

-- ─── Periodic refresh ─────────────────────────────────────────────────────────
task.spawn(function()
    while _G.SellLemonsMain do
        task.wait(1)
        for _, fn in ipairs(refreshFns) do pcall(fn) end
    end
end)
]])
if _iilili then
  local _I1iIl,_IllIll11l=pcall(_iilili)
  if not _I1iIl then warn("[ANTI-HOOK] Script error: "..tostring(_IllIll11l)) end
else
  warn("[ANTI-HOOK] Load error: "..tostring(_i11Ii))
end
else
  warn("[ANTI-HOOK] Integrity check failed — script execution blocked.")
end
end