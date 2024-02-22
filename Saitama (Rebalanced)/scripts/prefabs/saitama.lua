local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}

local start_inv = {
}
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.ESCTEMPLATE = {
	"spear",
}

TUNING.HEAVY_SPEED_MULT = 1

local function onbecamehuman(inst)
	inst.components.locomotor.walkspeed = 8
	inst.components.locomotor.runspeed = 12
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)

    if not inst:HasTag("playerghost") then
        onbecamehuman(inst)
    end
end


local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "saitama.tex" )
end

local master_postinit = function(inst)
	inst.soundsname = "wilson"
	
	inst.components.health:SetMaxHealth(300)
	inst.components.hunger:SetMax(200)
	inst.components.sanity:SetMax(200)
	inst.components.health.fire_damage_scale = 0
	
	inst.components.locomotor.walkspeed = 8
	inst.components.locomotor.runspeed = 12
	
	inst.components.temperature.mintemp = 5
	inst.components.temperature.maxtemp = 70

    inst.components.combat.damagemultiplier = 1
	inst.components.combat:SetDefaultDamage(9999999999*9)
	inst.components.combat:SetAttackPeriod(0.5)

	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst:ListenForEvent("onattackother", function(inst, data)
		if data.target ~= nil then
			if data.weapon == nil then
				inst.components.combat:SetAreaDamage(5, 1)
			else
				local _od = inst.components.combat.CalcDamage
				inst.components.combat.CalcDamage = function(self, target, weapon, multiplier)
					if weapon ~= nil then
						multiplier = 2
						inst.components.combat:SetAreaDamage(0, 0) -- Reset area damage
					end
					return _od(self, target, weapon, multiplier)
				end
			end
		end
	end)
	

	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("saitama", prefabs, assets, common_postinit, master_postinit, start_inv)
