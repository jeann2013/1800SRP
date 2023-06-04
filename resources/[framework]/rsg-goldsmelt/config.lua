Config = {}

Config.Debug = false

Config.SmeltProps = {
	'p_goldsmeltburner01x',
}

Config.SmeltOptions = {

    ["Large Nugget Gold Bar"] = {
		name = Lang:t('text.gold_bar'),
        smelttime = 20000,
        smeltitems = {
            [1] = { item = "largenugget", amount = 2 },
        },
        receive = "goldbar"
    },
	
    ["Medium Nugget Gold Bar"] = {
		name = Lang:t('text.gold_bar'),
        smelttime = 20000,
        smeltitems = {
            [1] = { item = "mediumnugget", amount = 4 },
        },
        receive = "goldbar"
    },
	
    ["Small Nugget Gold Bar"] = {
		name = Lang:t('text.gold_bar'),
        smelttime = 20000,
        smeltitems = {
            [1] = { item = "smallnugget", amount = 7 },
        },
        receive = "goldbar"
    },
	
}
