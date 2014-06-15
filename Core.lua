--[[
Author: Starinnia
Another Damage Meter for World of Warcraft
Project Version: @project-version@
contact: codemaster2010 AT gmail DOT com

Copyright (c) 2014 Michael J. Murray aka Nydinia of Stormrage(US)
All rights reserved unless otherwise explicitly stated.
]]

local ComboPointsRedux = LibStub("AceAddon-3.0"):NewAddon("AfterActionReport", "AceConsole-3.0")

--import other necessary libs
local LSM = LibStub("LibSharedMedia-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("ComboPointsRedux")

function ComboPointsRedux:OnInitialize()
	local defaults = {
		profile = {
			
		}
	}
	
	self.db = LibStub("AceDB-3.0"):New("AfterActionReportDB", defaults, "Default")
	
	self.db.RegisterCallback(self, "OnProfileReset", "Reset")
	self.db.RegisterCallback(self, "OnProfileCopied", "Refresh")
	self.db.RegisterCallback(self, "OnProfileChanged", "Refresh")
	
	self:RegisterChatCommand("aar", "OpenConfig", true, true)
	self:RegisterChatCommand("afteraction", "OpenConfig", true, true)
	
	local spy = CreateFrame("FRAME", nil, UIParent)
	spy.name = "AfterActionReport"
	spy.addon = "AfterActionReport_Options"
	spy:Hide()
	spy:SetScript("OnShow", function(self)
		--remove the dummy entry
		for i, f in ipairs(INTERFACEOPTIONS_ADDONCATEGORIES) do
			if f == self.name or f.name == self.name then
				tremove(INTERFACEOPTIONS_ADDONCATEGORIES, i)
				break
			end
		end
		self:Hide()
		
		--load the config
		LoadAddOn(self.addon)
		
		--refresh the screen
		InterfaceOptionsFrame_OpenToCategory(self.name)
	end)
	InterfaceOptions_AddCategory(spy)
end

function ComboPointsRedux:OnEnable()
	
end

function ComboPointsRedux:Reset()
	
end

function ComboPointsRedux:Refresh()
	
end

function ComboPointsRedux:OpenConfig()
	LoadAddOn("AfterActionReport_Options")
	LibStub("AceConfigDialog-3.0"):Open("AfterActionReport")
end
