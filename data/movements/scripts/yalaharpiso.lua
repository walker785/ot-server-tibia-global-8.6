function onStepIn(cid, item, position, fromPosition)
    local newPosition = {x=32778, y=31172, z=14}
	local noPosition = {x=32783, y=31159, z=10}
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