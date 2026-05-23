
SMODS.Joker{ --Redline
    key = "redline",
    config = {
        extra = {
            emult0 = 1.1
        }
    },
    loc_txt = {
        ['name'] = 'Redline',
        ['text'] = {
            [1] = '{C:red}Mult^1.1{} when {C:hearts}Hearts{} are scored',
            [2] = '',
            [3] = '{C:inactive}Art by iobozzad',
            [4] = 'Ability by me{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
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
    pools = { ["jokerfor_jfdj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_suit("Hearts") then
                return {
                    e_mult = 1.1
                }
            end
        end
    end
}