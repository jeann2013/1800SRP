Config = {}

Config.Storage = {
	[1] = {
		name = "tool_bag", 
		label =  Lang:t('menu.tool_bag'), 
		weight = 20000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
		slots = 50, 	-- This is the number of slots this item has
	},
	--[2] = { ADD MORE STORAGE ITMES BELOW MAKE SURE TO ADD ITEM INTO INVENTORY
	--	name = "", 
	--	label = "", 
	--	weight = 20000,	-- This is the max weight this item can hold (make it less than this items weight to prevent this item being added to itself)
	--	slots = 50, 	-- This is the number of slots this item has
	--},
}
