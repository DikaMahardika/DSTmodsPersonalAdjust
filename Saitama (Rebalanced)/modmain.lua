PrefabFiles = {
	"saitama", "saitama_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/saitama.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/saitama.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/saitama.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/saitama.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/saitama_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/saitama_silho.xml" ),

    Asset( "IMAGE", "bigportraits/saitama.tex" ),
    Asset( "ATLAS", "bigportraits/saitama.xml" ),
	
	Asset( "IMAGE", "images/map_icons/saitama.tex" ),
	Asset( "ATLAS", "images/map_icons/saitama.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_saitama.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_saitama.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_saitama.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_saitama.xml" ),
	
--Cosmetic Update--

	Asset( "IMAGE", "bigportraits/saitama_none.tex" ),
    Asset( "ATLAS", "bigportraits/saitama_none.xml" ),
	
	Asset( "IMAGE", "images/names_saitama.tex" ),
    Asset( "ATLAS", "images/names_saitama.xml" ),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.saitama = "One Punch Man"
STRINGS.CHARACTER_NAMES.saitama = "Saitama"
STRINGS.CHARACTER_DESCRIPTIONS.saitama = "Punch punch"
STRINGS.CHARACTER_QUOTES.saitama = "\"More balance more fun!\""

-- Custom speech strings
STRINGS.CHARACTERS.SAITAMA = require "speech_saitama"

-- The character's name as appears in-game 
STRINGS.NAMES.SAITAMA = "Saitama"

-- The default responses of examining the character
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SAITAMA = 
{
	GENERIC = "It's Saitama!",
	ATTACKER = "That Saitama looks shifty...",
	MURDERER = "Murderer!",
	REVIVER = "Saitama, friend of ghosts.",
	GHOST = "Saitama could use a heart.",
}

STRINGS.CHARACTERS.GENERIC.DESCRIBE.SAITAMATWO = 
{
	GENERIC = "It's Saitama!",
	ATTACKER = "That Saitama looks shifty...",
	MURDERER = "Murderer!",
	REVIVER = "Saitama, friend of ghosts.",
	GHOST = "Saitama could use a heart.",
}

AddMinimapAtlas("images/map_icons/saitama.xml")

AddModCharacter("saitama", "MALE")


