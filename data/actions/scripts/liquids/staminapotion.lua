function onUse(cid, item, fromPosition, itemEx, toPosition)
    local cfg = {}
    cfg.refuel = 42 * 60 * 1000
    if(getPlayerStamina(cid) >= cfg.refuel) then
	    doPlayerSendCancel(cid, "Your stamina is already full.")
    else
	    doPlayerSetStamina(cid, cfg.refuel)
	    doSendMagicEffect(getThingPosition(itemEx.uid), CONST_ME_HOLYAREA)
	    doSendMagicEffect(getThingPosition(itemEx.uid), CONST_ME_HOLYDAMAGE)
            doPlayerSendTextMessage(cid,22,"Your stamina has been refilled.")
	    doRemoveItem(item.uid)
    end
    return true
end