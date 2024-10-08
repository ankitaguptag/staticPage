-- Script generated by GameGuardian 101.1 (16142) at 2024-01-07 20:14:39 for Mob Control [com.vincentb.MobControl 2.64.0 (2377)]
-- Lua help: http://gameguardian.net/help/

-- options
local scriptName = [=====[Script for Mob Control 2.64.0]=====]
local scriptVersion = '1.0.0'
local scriptAuthor = 'User'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mob Control]=====]
local targetPkg = 'com.vincentb.MobControl'
local targetVersion = [=====[2.64.0]=====]
local targetBuild = 2377

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber("5000;5000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("5000", gg.TYPE_DWORD)
gg.processResume()
gg.processPause()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-199999999", gg.TYPE_DWORD)
gg.processResume()
gg.processPause()
gg.processResume()
gg.processPause()
gg.processResume()
