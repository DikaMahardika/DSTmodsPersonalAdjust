-- This information tells other players more about the mod
name = "Automatic big chest sorting"
description = "sort big chest"
author = "buzite26"
version = "0.0.1"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

--This let's the game know that this mod doesn't need to be listed in the server's mod listing
client_only_mod = false

--Let the mod system know that this mod is functional with Don't Starve Together
dst_compatible = true

all_clients_require_mod = true

-- Can specify a custom icon for this mod!
icon_atlas = "modicon_256.xml"
icon = "modicon_256.tex"

-- Specify the priority
priority = 3

server_filter_tags = {"buzite26", "auto_chest_sort"}

configuration_options = {
    {
        name = "SIB",
        label = "Sort ice box",
        options = {
            { description = "No", data = false },
            { description = "Yes", data = true },
        },
        default = false
    },
    {
        name = "SSB",
        label = "Sort salt box",
        options = {
            { description = "No", data = false },
            { description = "Yes", data = true },
        },
        default = false
    },
}
