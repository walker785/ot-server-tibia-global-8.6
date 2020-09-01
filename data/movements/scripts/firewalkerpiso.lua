function onStepIn(cid, item, position, fromPosition)
    local newPosition = {x=32578, y=31404, z=15}
	local noPosition = {x=32572, y=31405, z=15}
        if getPlayerItemCount(cid, 6103) > 0 or getPlayerStorageValue(cid, 35738) == 1 then
		    	doTeleportThing(cid, newPosition, TRUE)
			doSendMagicEffect(fromPosition, CONST_ME_BIGPLANTS)
			doSendMagicEffect(newPosition, CONST_ME_TELEPORT)
                   	doPlayerSetStorageValue(cid, 35735, 1)
                  	doPlayerRemoveItem(cid, 6103, 1)
		else
			doTeleportThing(cid, noPosition, TRUE)
			doSendMagicEffect(noPosition, CONST_ME_TELEPORT)
	end
end