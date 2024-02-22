local assets =
{
	Asset( "ANIM", "anim/saitama.zip" ),
	Asset( "ANIM", "anim/ghost_saitama_build.zip" ),
}

local skins =
{
	normal_skin = "saitama",
	ghost_skin = "ghost_saitama_build",
}

local base_prefab = "saitama"

local tags = {"SAITAMA", "CHARACTER"}

return CreatePrefabSkin("saitama_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})