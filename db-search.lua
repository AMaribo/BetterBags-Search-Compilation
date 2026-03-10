local _, addon = ...

local db = {
	["Weapons"] = {
		queryString = "(type = weapon or slot %= 'off hand' or slot %= 'held in') and not (category = 'gear:') and ilvl > 200", 
		prio = 55, 
	}, 
	["Armour"] = {
		queryString = "type = armor and not (slot %= 'off hand' or slot %= 'held in') and not (category = 'gear:') and ilvl > 200", 
		prio = 54, 
	}, 
	["Jewellery"] = {
		queryString = "(slot = finger or slot = neck) and not (category = 'gear:') and ilvl > 200", 
		prio = 53, 
	}, 
	["Trinkets"] = {
		queryString = "slot = trinket and not (category = 'gear:') and ilvl > 200", 
		prio = 52, 
	}, 
	["Low iLvl Gear"] = {
		queryString = "(type = weapon or type = armor) and not (category = 'gear:') and ilvl <= 200", 
		prio = 99, 
	}, 
	["WuE"] = {
		queryString = "binding = wue", 
		prio = 49, 
	}, 
	["BoE"] = {
		queryString = "binding = boe", 
		prio = 48, 
	}, 
	["Warbound Gear"] = {
		queryString = "binding = warbound and (type = weapon or type = armor)", 
		prio = 47, 
	}, 
	["Warbound Other"] = {
		queryString = "binding = warbound and (type != weapon and type != armor)", 
		prio = 51, 
	}, 
	["Warbound - Old Expansions"] = {
		queryString = "(wue or warbound) and expansion != Midnight and ilvl <= 200", 
		prio = 46, 
	}, 
	["Raid Consumables"] = {
		queryString = "subtype = potion or subtype = flask or (type = consumable and rune) or name %= 'eggs' or name %= 'revenge, ' or name %= \"beledar's b\" and rarity >= common or (type = consumable and ironclaw) or (type = consumable and oil and exp = tww)", 
		prio = 50, 
	}, 
	["Housing Decor"] = {
		queryString = "type = housing and subtype = decor", 
		prio = 40, 
	}, 
	["Housing Dye"] = {
		queryString = "type = housing and subtype = 'Housing Dye'", 
		prio = 41, 
	}, 
	["Housing Lumber"] = {
		queryString = "type = Tradeskill AND subtype = Other AND name %= Lumber", 
		prio = 42, 
	}, 
	["Other Housing"] = {
		queryString = "type = Housing AND NOT (subtype = Decor OR subtype = 'Housing Dye')", 
		prio = 43, 
	}, 
	["Midnight Profession Knowledge"] = {
		queryString = "'study to increase your midnight' AND 'knowledge by'",
		prio = 60,
	}, 
	["Delve"] = {
		queryString = "'combat curio' OR 'utility curio'",
		prio = 59,
	}, 
	["Midnight Weekly Caches"] = {
		queryString = "('pinnacle cache' OR 'Preyseeker') AND type = consumable",
		prio = 61,
	},
}

addon.db.search = db