--[[
Author: Starinnia
Another Damage Meter for World of Warcraft
Project Version: @project-version@
contact: codemaster2010 AT gmail DOT com

Copyright (c) 2014 Michael J. Murray aka Nydinia of Stormrage(US)
All rights reserved unless otherwise explicitly stated.
]]

local AfterActionReport = LibStub("AceAddon-3.0"):NewAddon("AfterActionReport", "AceConsole-3.0")

--import other necessary libs
local LSM = LibStub("LibSharedMedia-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("AfterActionReport")

function AfterActionReport:OnInitialize()
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
end

function AfterActionReport:OnEnable()
	
end

function AfterActionReport:Reset()
	
end

function AfterActionReport:Refresh()
	
end

function AfterActionReport:OpenConfig()
	LoadAddOn("AfterActionReport_Options")
	LibStub("AceConfigDialog-3.0"):Open("AfterActionReport")
end
