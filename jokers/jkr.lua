
SMODS.Joker{ --JKR
    key = "jkr",
    config = {
        extra = {
            chips0 = 10
        }
    },
    loc_txt = {
        ['name'] = 'JKR',
        ['text'] = {
            [1] = 'It seems like someone had colored over this Jack',
            [2] = '',
            [3] = '{C:inactive}Art by helloglob.',
            [4] = 'Ability by me{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
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
                chips = 10
            }
        end
    end
}