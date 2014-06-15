--[[
AfterActionReport_Options - LoD option module for ComboPointsRedux
Author: Michael Joseph Murray aka Nydinia of Stormrage(US)
Project Version: @project-version@
contact: codemaster2010 AT gmail DOT com

Copyright (c) 2014 Michael J. Murray aka Nydinia of Stormrage(US)
All rights reserved unless otherwise explicitly stated.
]]

local core = LibStub("AceAddon-3.0"):GetAddon("ComboPointsRedux")
local L = LibStub("AceLocale-3.0"):GetLocale("ComboPointsRedux_Options")
local LC = LibStub("AceLocale-3.0"):GetLocale("ComboPointsRedux")
local format = string.format

local opts = {
	type = 'group',
	args = {},
}


--add profile controls
opts.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(core.db)

LibStub("AceConfig-3.0"):RegisterOptionsTable("AfterActionReport", opts)
LibStub("AceConfigDialog-3.0"):SetDefaultSize("AfterActionReport", 800, 500)

LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AfterActionReport", "AfterActionReport")
