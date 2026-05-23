
SMODS.Joker{ --Mr. No mouth must scream
    key = "mrnomouthmustscream",
    config = {
        extra = {
            mult0 = 4
        }
    },
    loc_txt = {
        ['name'] = 'Mr. No mouth must scream',
        ['text'] = {
            [1] = 'I have no mouth and I must {C:red}+4{} Mult',
            [2] = '',
            [3] = '{C:inactive}Art by radicaldude55_97287',
            [4] = 'Ability by oxicreep{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
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
    pools = { ["jokerfor_jfdj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = 4
            }
        end
    end
}