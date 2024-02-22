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
	{
		name    = 'worm_in_advance',
		label   = 'Worm announce in advance',
		default = 5,
		options = {
            {description = '1 day', data = 1, hover = "1 Day before worm attack"},
            {description = '2 days', data = 2, hover = "2 Days before worm attack"},
            {description = '3 days', data = 3, hover = "3 Days before worm attack"},
            {description = '4 days', data = 4, hover = "4 Days before worm attack"},
            {description = '5 days', data = 5, hover = "Default 5 Days before worm attack"},
        },
	},
	{
		name    = 'hound_in_advance',
		label   = 'Hound announce in advance',
		default = 5,
		options = {
            {description = '1 day', data = 1, hover = "1 Day before hound attack"},
            {description = '2 days', data = 2, hover = "2 Days before hound attack"},
            {description = '3 days', data = 3, hover = "3 Days before hound attack"},
            {description = '4 days', data = 4, hover = "4 Days before hound attack"},
            {description = '5 days', data = 5, hover = "5 Days before hound attack"},
        },
	},
}