local config = {
bosses={---actionid, posicao para onde ira, valor que colocara, texto de entrada
[1001] = {pos={x = 1846, y = 595, z = 13, stackpos=1}, value=1, text="Entering The Crystal Caves"},
[1002] = {pos={x = 2149, y = 425, z = 14, stackpos=1}, value=2, text="Entering The Blood Halls"},
[1003] = {pos={x = 1815, y = 565, z = 15, stackpos=1}, value=3, text="Entering The Vats"},
[1004] = {pos={x = 1815, y = 565, z = 15, stackpos=1}, value=4, text="Entering The Arcanum"},
[1005] = {pos={x = 1975, y = 499, z = 12, stackpos=1}, value=5, text="Entering The Hive"},
[1006] = {pos={x = 1887, y = 494, z = 12, stackpos=1}, value=6, text="Entering The Shadow Nexus"}
},
mainroom={---actionid, posicao que ira,menor valor de storage que poder entrar, texto de entrada
[2001] = {pos={x = 1846, y = 595, z = 13, stackpos=1}, value=1, text="Entering The Crystal Caves"},
[2002] = {pos={x = 2149, y = 425, z = 14, stackpos=1}, value=2, text="Entering The Blood Halls"},
[2003] = {pos={x = 1815, y = 565, z = 15, stackpos=1}, value=3, text="Entering The Vats"},
[2004] = {pos={x = 1815, y = 565, z = 15, stackpos=1}, value=4, text="Entering The Arcanum"},
[2005] = {pos={x = 1975, y = 499, z = 12, stackpos=1}, value=5, text="Entering The Hive"} },
portals={---actionid,texto de entrada
[3000] = {pos={x = 1940, y = 520, z = 14}, text="Entering Inquisition Portals Room"},
[3001] = {pos={x = 1934, y = 541, z = 11}, text="Entering The Ward of Ushuriel"},
[3002] = {pos={x = 1946, y = 567, z = 13}, text="Entering The Undersea Kingdom"},
[3003] = {pos={x = 1900, y = 505, z = 11}, text="Entering The Ward of Zugurosh"},
[3004] = {pos={x = 2133, y = 401, z = 11}, text="Entering The Foundry"},
[3005] = {pos={x = 1973, y = 580, z = 11}, text="Entering The Ward of Madareth"},
[3006] = {pos={x = 2027, y = 444, z = 13}, text="Entering The Battlefield"},
[3007] = {pos={x = 2009, y = 545, z = 11}, text="Entering The Ward of The Demon Twins"},
[3008] = {pos={x = 1870, y = 387, z = 11}, text="Entering The Soul Wells"},
[3009] = {pos={x = 1973, y = 516, z = 11}, text="Entering The Ward of Annihilon"},
[3010] = {pos={x = 1882, y = 547, z = 11}, text="Entering The Ward of Hellgorak"} },
storage=56123,---storage used in boss and mainroom portals
e={} }----dunno whats this but have to be like this to make doCreatureSayWithDelay working, DON'T TOUCH}
function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
if(config.bosses[item.actionid]) then
local t= config.bosses[item.actionid]
if getPlayerStorageValue(cid, config.storage)< t.value then
setPlayerStorageValue(cid, config.storage, t.value)
end
doTeleportThing(cid, t.pos)
doSendMagicEffect(getCreaturePosition(cid),10)
doCreatureSay(cid,t.text,19,1, config.e)
elseif(config.mainroom[item.actionid]) then
local t= config.mainroom[item.actionid]
if getPlayerStorageValue(cid, config.storage)>=t.value then
doTeleportThing(cid, t.pos)
doSendMagicEffect(getCreaturePosition(cid),10)
doCreatureSay(cid,t.text,19,1,config.e)
else
doTeleportThing(cid, fromPosition)
doSendMagicEffect(getCreaturePosition(cid),10)
doCreatureSay(cid, 'You don\'t have enough energy to enter this portal', TALKTYPE_ORANGE_1)
end
elseif(config.portals[item.actionid]) then
local t= config.portals[item.actionid]
doTeleportThing(cid, t.pos)
doSendMagicEffect(getCreaturePosition(cid),10)
doCreatureSay(cid,t.text,19,1,config.e)
end
end
end