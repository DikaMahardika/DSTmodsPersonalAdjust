--GLOBAL.CHEATS_ENABLED = true
--GLOBAL.require( 'debugkeys' )

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local FOODTYPE = GLOBAL.FOODTYPE
local TECH = GLOBAL.TECH
local TUNING = GLOBAL.TUNING
local TheSim = GLOBAL.TheSim
local Vector3 = GLOBAL.Vector3
local ACTIONS = GLOBAL.ACTIONS
local TheNet = GLOBAL.TheNet

--состаковать все
local function stack_up(inst)
	for i = 1,inst.components.container:GetNumSlots() do
		local d_item = inst.components.container:RemoveItemBySlot(i)
        if d_item ~= nil then inst.components.container:GiveItem(d_item) end
    end
end

function compare(a,b)
	if a ~= nil and b ~= nil then
		if a.prefab == b.prefab then
			if a.components.stackable ~= nil and b.components.stackable ~= nil then
                return a.components.stackable:StackSize() > b.components.stackable:StackSize()
            end
			return false 
		end
		return a.prefab < b.prefab
	end
	return true
end

function sync_conainer(inst)
	for i = 1,inst.components.container:GetNumSlots() do
		local item = inst.components.container.slots[i]
		if item ~= nil then
			inst:PushEvent("itemget", { slot = i, item = item})
		end
    end
end

--отсортировать все
local function sort_up(inst)
	--local slotnum = inst.components.container:GetNumSlots()
	table.sort(inst.components.container.slots, compare)
end

local old_open = nil
local function onopen(inst)
	stack_up(inst)
	sort_up(inst)
	sync_conainer(inst)
	if old_open then old_open(inst) end
end

AddPrefabPostInit("treasurechest", function(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
	old_open = inst.components.container.onopenfn
	inst.components.container.onopenfn = onopen
end)
AddPrefabPostInit("dragonflychest", function(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
	old_open = inst.components.container.onopenfn
	inst.components.container.onopenfn = onopen
end)

if GetModConfigData("SIB") then
	AddPrefabPostInit("icebox", function(inst)
		if not GLOBAL.TheWorld.ismastersim then return inst end
		old_open = inst.components.container.onopenfn
		inst.components.container.onopenfn = onopen
	end)
end

if GetModConfigData("SSB") then
	AddPrefabPostInit("saltbox", function(inst)
		if not GLOBAL.TheWorld.ismastersim then return inst end
		old_open = inst.components.container.onopenfn
		inst.components.container.onopenfn = onopen
	end)
end

AddPrefabPostInit("storeroom", function(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
	old_open = inst.components.container.onopenfn
	inst.components.container.onopenfn = onopen
end)

AddPrefabPostInit("cellar", function(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
	old_open = inst.components.container.onopenfn
	inst.components.container.onopenfn = onopen
end)

AddPrefabPostInit("largechest", function(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
	old_open = inst.components.container.onopenfn
	inst.components.container.onopenfn = onopen
end)

AddPrefabPostInit("largeicebox", function(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
	old_open = inst.components.container.onopenfn
	inst.components.container.onopenfn = onopen
end)
