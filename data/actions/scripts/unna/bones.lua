local quest_storage = 17935

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if (getPlayerStorageValue(cid, quest_storage) == 2) then
		doCreatureSay(cid, 'You dig out a skull from the pile of bones. That must be the skull Lazaran talked about.', TALKTYPE_ORANGE_1)
		doPlayerSetStorageValue(cid, quest_storage, 3)
	end
	return true
end