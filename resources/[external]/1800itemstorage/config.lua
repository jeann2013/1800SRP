Config = {}

Config.Storage = {
	[1] = {
		name = "tool_bag", 
		label =  Lang:t('menu.tool_bag'), 
		weight = 10000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 20, 	-- This is the number of slots this item has
	},
	[2] = {
		name = "tool_bag_big", 
		label =  Lang:t('menu.tool_bag_big'), 
		weight = 20000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 50, 	-- This is the number of slots this item has
	},
	
}
