-- -------------------------------- --
-- AUTOGENERATED FILE. DO NOT EDIT. --
-- -------------------------------- --

local _, addonTable = ...

local npc = { -- [id] = { title, description (optional) }
[16475] = { "Меґелон" }, -- Megelon
[16477] = { "Проенітус" }, -- Proenitus
}

if addonTable.npc then
    for k, v in pairs(npc) do addonTable.npc[k] = v end
else
    addonTable.npc = npc
end