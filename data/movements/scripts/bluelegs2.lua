function onStepIn(cid, item, position, fromPosition)
    local newPosition = {x=33270, y=32446, z=12}
	local noPosition = {x=33268, y=32446, z=12}
        if getPlayerItemCount(cid, 8266) > 0 or getPlayerStorageValue(cid, 35738) == 1 then
		    	doTeleportThing(cid, newPosition, TRUE)
			doSendMagicEffect(fromPosition, CONST_ME_MORTAREA)
			doSendMagicEffect(newPosition, CONST_ME_TELEPORT)
                   	doPlayerSetStorageValue(cid, 35735, 1)
                  	doPlayerRemoveItem(cid, 8266, 1)
		else
			doTeleportThing(cid, noPosition, TRUE)
			doSendMagicEffect(noPosition, CONST_ME_TELEPORT)
	end
end