
SMODS.Joker{ --En passant
    key = "enpassant",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'En passant',
        ['text'] = {
            [1] = 'placeholder; give suggestions for abilities',
            [2] = '',
            [3] = '{C:inactive}Art by flying_oganesson',
            [4] = 'Ability by ...{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jokerfor_jfdj_jokers"] = true }
}