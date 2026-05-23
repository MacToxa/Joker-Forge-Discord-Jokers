
SMODS.Joker{ --Corrupted Joker
    key = "corruptedjoker",
    config = {
        extra = {
            xchips0 = 4
        }
    },
    loc_txt = {
        ['name'] = 'Corrupted Joker',
        ['text'] = {
            [1] = 'I have no mouth and I must {C:red}x4{} Mult',
            [2] = '',
            [3] = '{C:inactive}Art by arandomhunter',
            [4] = 'Ability by first 2 people under the post{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 3,
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
                x_chips = 4
            }
        end
    end
}