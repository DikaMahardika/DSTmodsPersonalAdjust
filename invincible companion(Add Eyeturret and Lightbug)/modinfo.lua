name = "Invincible Companions(added)"
description = "Added. A mod to make all your companions invincible, but only if you choose to do so.This mod adds the ability to not only make your companions invincible, but you can also make them harder or easier to kill. It's your choice.".."\n\n".."[Configurations]".."\n".."Squishy - 50 Health".."\n".."Tanky - 600 Health".."\n".."Invincible - Immune To Damage"
author = "Sune"
version = "0.2.1"
forumthread = ""

--Can specify a custom icon for this mod!
icon_atlas = "invinciblecompanions.xml"
icon = "invinciblecompanions.tex"

--This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

--Specify compatibility with versions of the game!
all_clients_require_mod = false
client_only_mod = false
dst_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true


--Toggle/Configuration options in the game!
configuration_options =
{
	{
		name = "health_chester",
		label = "Chester",
		hover   = " ",
		options =
		{
			{description = "Squishy", data = "chester_squishy", hover = "Give Chester 50 Health"},
			{description = "Tanky", data = "chester_tanky", hover = "Give Chester 600 Health"},
			{description = "Invincible", data = "chester_invincible", hover = "Give Chester invincibility"},

		},
		default = {"chester_invincible",},
	},
	{
		name    = "health_hutch",
		label   = "Hutch",
		hover   = " ",
		options =
		{
			{description = "Squishy", data = "hutch_squishy", hover = "Give Hutch 50 Health"},
			{description = "Tanky", data = "hutch_tanky", hover = "Give Hutch 600 Health"},
			{description = "Invincible", data = "hutch_invincible", hover = "Give Hutch invincibility"},

		},
		default = {"hutch_invincible",},
	},
	{
		name    = "health_glommer",
		label   = "Glommer",
		hover   = " ",
		options =
		{
			{description = "Squishy", data = "glommer_squishy", hover = "Give Glommer 50 Health"},
			{description = "Tanky", data = "glommer_tanky", hover = "Give Glommer 600 Health"},
			{description = "Invincible", data = "glommer_invincible", hover = "Give Glommer invincibility"},

		},
		default = {"glommer_invincible",},
	},
	{
		name    = "health_ticoon",
		label   = "Ticoon",
		hover   = " ",
		options =
		{
			{description = "Squishy", data = "ticoon_squishy", hover = "Give Ticoon 50 Health"},
			{description = "Tanky", data = "ticoon_tanky", hover = "Give Ticoon 600 Health"},
			{description = "Invincible", data = "ticoon_invincible", hover = "Give Ticoon invincibility"},

		},
		default = {"ticoon_invincible",},
	},
	{
		name    = "health_eyeturret",
		label   = "Houndius soothius",
		hover   = " ",
		options =
		{
			{description = "Normal", data = "eyeturret_normal", hover = "Give Houndius soothius 1000 Health"},
			{description = "Invincible", data = "eyeturret_invincible", hover = "Give Houndius soothius invincibility"},
		},
		default = {"eyeturret_invincible",},
	},
	{
		name    = "invincibility_lightbug",
		label   = "Bulbous Lightbub",
		hover   = " ",
		options =
		{
			{description = "Invincible", data = true, hover = "Give lightbug invincibility"},
			{description = "normal", data = false, hover = "Normal lightbug"},
		},
		default = {"lightflier_invincible",},
	},
}

--This lets people search for servers with this mod by these tags
server_filter_tags = {"infinite","life","invincible","friends","companions","no","die","tweak","cue.","cuestarz"}