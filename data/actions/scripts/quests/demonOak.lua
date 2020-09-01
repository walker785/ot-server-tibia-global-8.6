function onUse(cid, item, fromPosition, itemEx, toPosition)

local onePerQuest = "yes"
local level = 120
local positions =
{
        kick = { x = 32713, y = 32339, z = 7 },
        summon =
        {
                {x=32713, y=32348, z=7},
                {x=32720, y=32349, z=7},
                {x=32720, y=32354, z=7},
                {x=32711, y=32353, z=7}
        }
}

local summons =
{
        [1] = {"Demon"},
        [2] = {"Dark Torturer"},
        [3] = {"Bonebeast", "Braindeath", "Giant Spider"},
        [4] = {"Lich", "Vampire"},
        [5] = {"Bonebeast", "Diabolic Imp"},
        [6] = {"Demon Skeleton", "Banshee", "Elder Beholder", "Bonebeast"},
        [7] = {"Undead Dragon"},
        [8] = {"Elder Beholder", "Demon Skeleton", "Giant Spider"},
        [9] = {"Demon Skeleton", "Banshee", "Elder Beholder", "Bonebeast"},
        [10] = {"Diabolic Imp", "Braindeath"},
        [11] = {"Demon"}
}

local areaPosition =
{
        {x=32709, y=32345, z=7, stackpos = 255},
        {x=32725, y=32355, z=7, stackpos = 255}
}

local demonOak = {8288, 8289, 8290, 8291}

local storages =
{
        done = 35700,
        cutTree = 36901
}


       if isInArray(demonOak, itemEx.itemid) then

                local get = getPlayerStorageValue(cid, itemEx.itemid)
                if get == -1 then
                        get = 1
                end

                if(getPlayerStorageValue(cid, 8288) == 12 and getPlayerStorageValue(cid, 8289) == 12 and getPlayerStorageValue(cid, 8290) == 12 and getPlayerStorageValue(cid, 8291) == 12) then
                        doTeleportThing(cid, positions.kick)
                        doPlayerSetStorageValue(cid, storages.done, 1)
                        return TRUE
                end

                if getPlayerStorageValue(cid, itemEx.itemid) > 11 then
                        doSendMagicEffect(toPosition, CONST_ME_POFF)
                        return TRUE
                end

                if(math.random(100) <= 10) then
                        doPlayerSetStorageValue(cid, itemEx.uid, 12)
                        return TRUE
                end


                if summons[get] then
                for i = 1, #summons[get] do
                        doCreateMonster(summons[get][i], positions.summon[i])
                end
                        doSendMagicEffect(toPosition, CONST_ME_DRAWBLOOD)
                        doPlayerSetStorageValue(cid, itemEx.itemid, get + 1)
                        if math.random(100) >= 50 then
                                doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -270, -310, CONST_ME_BIGPLANTS)
                        end
                end
        return FALSE
        end
end