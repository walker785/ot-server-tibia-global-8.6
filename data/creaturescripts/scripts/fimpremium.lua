function onLogin(cid)
registerCreatureEvent(cid,"FimPremium")
local pos = {x = 32602, y = 34220, z = 7}
if isPremium(cid) then
setPlayerStorageValue(cid, 9899, 1)
elseif getPlayerStorageValue(cid, 9899) == 1 and not isPremium(cid) then
doTeleportThing(cid, pos)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You premium is Over!")
setPlayerStorageValue(cid, 9899, -1)
end
return 1
end