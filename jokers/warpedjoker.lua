
SMODS.Joker{ --Warped Joker
    key = "warpedjoker",
    config = {
        extra = {
            mult0 = 4
        }
    },
    loc_txt = {
        ['name'] = 'Warped Joker',
        ['text'] = {
            [1] = '{C:red}+4{} Mult...',
            [2] = '',
            [3] = 'But he warped?',
            [4] = '',
            [5] = '{C:inactive}Art by helloglob.',
            [6] = 'Ability by me{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jfdj_jfdj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = 4
            }
        end
    end
}