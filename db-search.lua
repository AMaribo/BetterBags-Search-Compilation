local _, addon = ...

local db = {
	["Weapons"] = {
		queryString = "(type = weapon or slot %= 'off hand' or slot %= 'held in') and not category = 'gear:' and ilvl > 300", 
		prio = 55, 
	}, 
	["Armour"] = {
		queryString = "type = armor and not (slot %= 'off hand' or slot %= 'held in') and not category = 'gear:' and ilvl > 300", 
		prio = 54, 
	}, 
	["Jewellery"] = {
		queryString = "slot = finger or slot = neck and not (category = 'gear:') and ilvl > 300", 
		prio = 53, 
	}, 
	["Trinkets"] = {
		queryString = "slot = trinket and not (category = 'gear:') and ilvl > 300", 
		prio = 52, 
	}, 
	["Low iLvl Gear"] = {
		queryString = "(type = weapon or type = armor) and not (category = 'gear:') and ilvl <= 300", 
		prio = 100, 
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
		prio = 50, 
	}, 
}

addon.db.search = db