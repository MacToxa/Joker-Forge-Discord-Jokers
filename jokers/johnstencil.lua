
SMODS.Joker{ --John Stencil
    key = "johnstencil",
    config = {
        extra = {
            emult0 = 2,
            emult = 2
        }
    },
    loc_txt = {
        ['name'] = 'John Stencil',
        ['text'] = {
            [1] = '{C:red}Mult^2{} for each unique joker that has {C:attention}Stencil{} in it\'s name',
            [2] = '',
            [3] = '{C:inactive}Art by adumbasswaffle',
            [4] = 'Ability by me{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 15,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jfdj_jokerfor_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_jokerstencil" then 
                        return true
                    end
                end
            end)() then
                return {
                    e_mult = 2
                }
            else
                return {
                    e_mult = 2
                }
            end
        end
    end
}