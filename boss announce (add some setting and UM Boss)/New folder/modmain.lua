-- local variables for API functions. any changes to the line below will be lost on re-generation
local AddPrefabPostInit, math_floor, pairs, ipairs, print, GetModConfigData = AddPrefabPostInit, math.floor, pairs, ipairs, print, GetModConfigData

local TheNet = GLOBAL.TheNet

local annstring = {}
annstring.reflash = "is Available Now"
annstring.dragonfly = "Dragonfly"
annstring.gotkilledby = "Got Killed By"
annstring.gotkilled = "Got Killed"

AddPrefabPostInit("beequeenhive",function(inst)
inst:ListenForEvent("timerdone", function()
if inst:GetDisplayName() == "Honey Patch" then
	TheNet:Announce(inst:GetDisplayName().. " " ..annstring.reflash)
end
end)
end)

AddPrefabPostInit("dragonfly_spawner",function(inst)
inst:ListenForEvent("timerdone", function()
TheNet:Announce(annstring.dragonfly.. " " ..annstring.reflash)
end)
end)

AddPrefabPostInit("toadstool_cap",function(inst)
inst:ListenForEvent("ms_spawntoadstool", function()
TheNet:Announce(inst:GetDisplayName().. " " ..annstring.reflash)
end)
end)

AddPrefabPostInit("atrium_gate",function(inst)
inst:ListenForEvent("timerdone", function()
if inst.components.trader.enabled == true then
	TheNet:Announce(inst:GetDisplayName().. " " ..annstring.reflash)
end
end)
end)

AddPrefabPostInit("klaus_sack", function(inst)
inst:DoTaskInTime(.5, function(inst)
TheNet:Announce(inst:GetDisplayName().. " " ..annstring.reflash)
end)
end)

AddPrefabPostInit("crabking", function(inst)
inst:DoTaskInTime(.5, function(inst)
TheNet:Announce(inst:GetDisplayName().. " " ..annstring.reflash)
end)
end)

AddPrefabPostInit("klaus", function(inst)
local function announcement(inst, data)
	local lastattacker = inst.components.combat and inst.components.combat.lastattacker
	if lastattacker ~= nil then
		TheNet:Announce(inst:GetDisplayName().. " " ..annstring.gotkilledby.. " " ..lastattacker.name)
	else
		TheNet:Announce(inst:GetDisplayName().. " " ..annstring.gotkilled)
	end
end
local function extinction(inst)
	if inst:IsUnchained() then
		inst:ListenForEvent("attacked", announcement)
	end
end
inst:ListenForEvent("death", extinction)
end)

local death_announcement ={
	"beequeen",
	"dragonfly",
	"toadstool",
	"toadstool_dark",
	"moose",
	"antlion",
	"bearger",
	"deerclops",
	"stalker",
	"stalker_atrium",
	--"stalker_forest",
	"minotaur",
	"malbatross",
	"crabking",
}

for k, v in pairs(death_announcement) do
	AddPrefabPostInit(v, function(inst)
	inst:ListenForEvent("death", function()
	local lastattacker = inst.components.combat and inst.components.combat.lastattacker
	if lastattacker ~= nil then
		TheNet:Announce(inst:GetDisplayName().. " " ..annstring.gotkilledby.. " " ..lastattacker.name)
	else
		TheNet:Announce(inst:GetDisplayName().. " " ..annstring.gotkilled)
	end
	end)
	end)
end

local DAYS_IN_ADVANCE = 5

local secADay = 8*60

local function second2Day(val)
	return math_floor(val / secADay)
end

local function HoundAttackString(timeToAttack)
	if timeToAttack == 0 then
		return "the Hounds Will Attack Today"
	else
		return "the Hounds Will Attack in "..timeToAttack..' Days'
	end
end

local function HoundAttack(inst)
	inst:ListenForEvent("cycleschanged",
	function(inst)
		if GLOBAL.TheWorld:HasTag("cave") then
			return
		end
		if not GLOBAL.TheWorld.components.hounded then
			return
		end
		local _timeToAttack = GLOBAL.TheWorld.components.hounded:GetTimeToAttack()
		local timeToAttack  = second2Day(_timeToAttack)
		if timeToAttack <= DAYS_IN_ADVANCE and GLOBAL.TheWorld.state.cycles ~= 0 then
			for i, v in ipairs(GLOBAL.AllPlayers) do v.components.talker:Say(HoundAttackString(timeToAttack),10,true,true,false) end
		end
		print("Hound attack in "..timeToAttack.."(".._timeToAttack..") days.")
		end,
		GLOBAL.TheWorld)
	end

	local function WormAttackString(timeToAttack)
		if timeToAttack == 0 then
			return "the Hounds Will Attack Today"
		else
			return "the Hounds Will Attack in "..timeToAttack..' Days'
		end
	end

	local function WormAttack(inst)
		inst:ListenForEvent("cycleschanged",
		function(inst)
			if not GLOBAL.TheWorld:HasTag("cave") then
				return
			end
			if not GLOBAL.TheWorld.components.hounded then
				return
			end
			local _timeToAttack = GLOBAL.TheWorld.components.hounded:GetTimeToAttack()
			local timeToAttack  = second2Day(_timeToAttack)
			if timeToAttack <= DAYS_IN_ADVANCE and GLOBAL.TheWorld.state.cycles ~= 0 then
				for i, v in ipairs(GLOBAL.AllPlayers) do v.components.talker:Say(WormAttackString(timeToAttack),10,true,true,false) end
			end
			print("Hound attack in "..timeToAttack.."(".._timeToAttack..") days.")
			end,
			GLOBAL.TheWorld)
		end

		if GetModConfigData("is_hound_announce") then
			AddPrefabPostInit("world", HoundAttack)
		end

		if GetModConfigData("is_worm_announce") then
			AddPrefabPostInit("cave", WormAttack)
		end

