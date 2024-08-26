local _, addon = ...

---@class BetterBags: AceAddon
local BetterBags = LibStub('AceAddon-3.0'):GetAddon('BetterBags')

---@class Categories: AceModule
local categories = BetterBags:GetModule('Categories')

---@class Localization: AceModule
local L = BetterBags:GetModule('Localization')

for categoryName, info in pairs(addon.db.search) do 
	categories:CreateCategory({
		name = L:G(categoryName), 
		itemList = {}, 
		searchCategory = {
			query = info.queryString
		}, 
		save = false, 
		note = L:G("Created by BetterBags Simple Search Compilation."), 
		priority = info.prio, 
	})
end
