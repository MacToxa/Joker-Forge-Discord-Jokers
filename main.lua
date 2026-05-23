SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomConsumables", 
    path = "CustomConsumables.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end
-- this function is used to load everything within a folder.-- Jokerforge doesnt use it because it doesnt make loading order easy
local function load_folder(path)
    local files = NFS.getDirectoryItemsInfo(mod_path .. "/" .. path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. file_name))()
        end
    end
end
-- load the jokers
if true then
    assert(SMODS.load_file("jokers/warpedjoker.lua"))()
    assert(SMODS.load_file("jokers/eugene.lua"))()
    assert(SMODS.load_file("jokers/bluejokerofdeath.lua"))()
    assert(SMODS.load_file("jokers/corruptedjoker.lua"))()
    assert(SMODS.load_file("jokers/mrnomouthmustscream.lua"))()
    assert(SMODS.load_file("jokers/giraffejoker.lua"))()
    assert(SMODS.load_file("jokers/enpassant.lua"))()
    assert(SMODS.load_file("jokers/jkr.lua"))()
    assert(SMODS.load_file("jokers/redline.lua"))()
    assert(SMODS.load_file("jokers/templatetickets.lua"))()
    assert(SMODS.load_file("jokers/mandelajoker.lua"))()
    assert(SMODS.load_file("jokers/joeker.lua"))()
    assert(SMODS.load_file("jokers/johnstencil.lua"))()
    assert(SMODS.load_file("jokers/jokeyforgey.lua"))()
    assert(SMODS.load_file("jokers/mannequinjoker.lua"))()
end
-- load the consumables
if true then
    assert(SMODS.load_file("consumables/nothing.lua"))()
end
SMODS.ObjectType({
    key = "jfdj_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "jfdj_jfdj_jokers",
    cards = {
        ["j_jfdj_warpedjoker"] = true,
        ["j_jfdj_eugene"] = true,
        ["j_jfdj_bluejokerofdeath"] = true,
        ["j_jfdj_corruptedjoker"] = true,
        ["j_jfdj_mrnomouthmustscream"] = true,
        ["j_jfdj_giraffejoker"] = true,
        ["j_jfdj_enpassant"] = true,
        ["j_jfdj_jkr"] = true,
        ["j_jfdj_redline"] = true,
        ["j_jfdj_templatetickets"] = true,
        ["j_jfdj_mandelajoker"] = true,
        ["j_jfdj_joeker"] = true,
        ["j_jfdj_mannequinjoker"] = true
    },
})

SMODS.ObjectType({
    key = "jfdj_jokerfor_jokers",
    cards = {
        ["j_jfdj_johnstencil"] = true,
        ["j_jfdj_jokeyforgey"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {} 
    }
end