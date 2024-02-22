local AllRecipes = GLOBAL.AllRecipes
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local STRINGS = GLOBAL.STRINGS
local TECH = GLOBAL.TECH

----------------------------------------------
if GetModConfigData("health_chester") == "chester_squishy" then
AddPrefabPostInit("chester", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(50)
inst.components.health:StartRegen(30000000, 1.5)
end)

elseif GetModConfigData("health_chester") == "chester_tanky" then
AddPrefabPostInit("chester", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(600)
inst.components.health:StartRegen(30000000, 1.5)
end)

elseif GetModConfigData("health_chester") == "chester_invincible" then
AddPrefabPostInit("chester", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
if GLOBAL.TheWorld.ismastersim then
inst.components.health:SetInvincible(true)
end
end)
end

if GetModConfigData("health_hutch") == "hutch_squishy" then
AddPrefabPostInit("hutch", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(50)
inst.components.health:StartRegen(30000000, 1.5)
end)

elseif GetModConfigData("health_hutch") == "hutch_tanky" then
AddPrefabPostInit("hutch", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(600)
inst.components.health:StartRegen(30000000, 1.5)
end)

elseif GetModConfigData("health_hutch") == "hutch_invincible" then
AddPrefabPostInit("hutch", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
if GLOBAL.TheWorld.ismastersim then
inst.components.health:SetInvincible(true)
end

end)
end

if GetModConfigData("health_glommer") == "glommer_squishy" then
AddPrefabPostInit("glommer", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(50)
inst.components.health:StartRegen(30000000, 1.5)

end)

elseif GetModConfigData("health_glommer") == "glommer_tanky" then
AddPrefabPostInit("glommer", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(600)
inst.components.health:StartRegen(30000000, 1.5)

end)

elseif GetModConfigData("health_glommer") == "glommer_invincible" then
AddPrefabPostInit("glommer", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
if GLOBAL.TheWorld.ismastersim then
inst.components.health:SetInvincible(true)
end

end)
end

if GetModConfigData("health_ticoon") == "ticoon_squishy" then
AddPrefabPostInit("ticoon", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(50)
inst.components.health:StartRegen(30000000, 1.5)

end)

elseif GetModConfigData("health_ticoon") == "ticoon_tanky" then
AddPrefabPostInit("ticoon", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
inst.components.health:SetMaxHealth(600)
inst.components.health:StartRegen(30000000, 1.5)

end)

elseif GetModConfigData("health_ticoon") == "ticoon_invincible" then
AddPrefabPostInit("ticoon", function (inst)
if not GLOBAL.TheWorld.ismastersim then
    return inst
end
if GLOBAL.TheWorld.ismastersim then
inst.components.health:SetInvincible(true)
end

end)
end

if GetModConfigData("health_eyeturret") == "eyeturret_normal" then
    AddPrefabPostInit("eyeturret", function (inst)
    if not GLOBAL.TheWorld.ismastersim then
        return inst
    end
    inst.components.health:SetMaxHealth(1000)
    inst.components.health:StartRegen(30000000, 1.5)
    
    end)
    
    elseif GetModConfigData("health_eyeturret") == "eyeturret_invincible" then
    AddPrefabPostInit("eyeturret", function (inst)
    if not GLOBAL.TheWorld.ismastersim then
        return inst
    end
    if GLOBAL.TheWorld.ismastersim then
    inst.components.health:SetInvincible(true)
    end
    
    end)
    end

    if GetModConfigData("invincibility_lightbug") then
        AddPrefabPostInit("lightflier", function(inst)
            if not GLOBAL.TheWorld.ismastersim then
                return inst
            end
            if GLOBAL.TheWorld.ismastersim then
                inst.components.health:SetInvincible(true)
            end
        end)
    end