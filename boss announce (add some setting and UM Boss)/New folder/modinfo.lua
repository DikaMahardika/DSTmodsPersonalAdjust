name = "Boss Announce"
description = "Adding hound and worm attack option and optimize some code for english only"
author = "Original code by 辣椒小皇纸"
version = "0.1"

all_clients_require_mod = false
client_only_mod = false
dst_compatible = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"


configuration_options =
{
	{
		name = "is_hound_announce",
		label = "Hound Announce",
		hover = "",
		options =	{
			{description = "Yes", data = true, hover = ""},
			{description = "No", data = false, hover = ""},
		},
		default = true,
	},
	{
		name = "is_Worm_announce",
		label = "Worm Announce",
		hover = "",
		options =	{
			{description = "Yes", data = true, hover = ""},
			{description = "No", data = false, hover = ""},
		},
		default = true,
	},
}