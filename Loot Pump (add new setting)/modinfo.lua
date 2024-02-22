name = "Loot Pump(UM and SkeletonAI only)"
description = [[
Modded for UM and SKeletonAI
]]
author = "Gleenus, Catherine and Jess /X"
version = "0.1"
forumthread = ""
api_version = 10
dst_compatible = true

all_clients_require_mod = true
client_only_mod = false

icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

----------------------------
-- Configuration settings --
----------------------------

configuration_options = 
{
	{
		name = "LOOT_PUMP_SCALE",
		label = "Range Scale",
		hover = "Scale the looting and throwing range.",
		options =	
		{
			{description = " 33%", data = 0.33},
			{description = " 50%", data = 0.50},
			{description = " 66%", data = 0.66},
			{description = "100%", data = 1.00},
            {description = "150%", data = 1.50},
			{description = "200%", data = 2.00},			
		},
		default = 1,
	},

	{
		name = "LOOT_PUMP_SPEED",
		label = "Speed Scale",
		hover = "Scale the speed that items move while being looted.",
		options =	
		{
			{description = " 33%", data = 0.33},
			{description = " 50%", data = 0.50},
			{description = "100%", data = 1.00},
            {description = "200%", data = 2.00},
			{description = "300%", data = 3.00},			
		},
		default = 1,
	},
	
	{
		name = "LOOT_PUMP_SOUND",
		label = "Play Sound",
		hover = "Play item launch sound and container animation?",
		options =	
		{
			{description = " No", data = false},
			{description = "Yes", data = true},
		},
		default = true	,
	},
	
	{
		name = "LOOT_PUMP_TWOZN",
		label = "Two Zones",
		hover = "One zone for looting and other for containers.",
		options =	
		{
			{description = " No", data = false},
			{description = "Yes", data = true},
		},
		default = false	,
	},
	{
		name = "LOOT_PUMP_EQUIP",
		label = "Loot Equipments",
		hover = "Loot equipable items on ground?",
		options =	
		{
			{description = " No", data = false},
			{description = "Yes", data = true},
		},
		default = true,
	},
	{
		name = "LOOT_PUMP_WALLS",
		label = "Loot through walls?",
		hover = "Itens being looted can pass through walls?",
		options =	
		{
			{description = " No", data = false},
			{description = "Yes", data = true},
		},
		default = true,
	},
	{
		name = "Amulet_Loot_Pump",
		label = "Loot Amulet?",
		hover = "Amulet can be pumped?",
		options =	
		{
			{description = "No", data = true},
			{description = "Yes", data = false},
		},
		default = false,
	},
}
