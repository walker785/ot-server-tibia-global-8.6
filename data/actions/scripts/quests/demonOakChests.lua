function onUse(cid, item, fromPosition, itemEx, toPosition)

        if item.uid == 12901 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Demon Legs and Solar Axe.")
                        doPlayerAddItem(cid, 2495, 1)
                        doPlayerAddItem(cid, 8925, 1)
                        doPlayerSetStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        elseif item.uid == 12902 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Rainbow Shield and Royal Draken Mail.")
                        doPlayerAddItem(cid, 8905, 1)
                        doPlayerAddItem(cid, 12642, 1)
                        doPlayerSetStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        elseif item.uid == 12904 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Spellbook of Dark Mysteries and Royal Scale Robe.")
                        doPlayerAddItem(cid, 8918, 1)
                        doPlayerAddItem(cid, 12643, 1)
                        doPlayerSetStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        elseif item.uid == 12903 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Royal Crossbow and Royal Draken Helmet.")
                        doPlayerAddItem(cid, 8851, 1)
                        doPlayerAddItem(cid, 12645, 1)
                        doPlayerSetStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        end
                return TRUE
end