local function inf_light(inst)
		inst:RemoveComponent("perishable")
end

AddPrefabPostInit("lightbulb", inf_light)