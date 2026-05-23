
SMODS.Joker{ --Template Tickets
    key = "templatetickets",
    config = {
        extra = {
            dollars0 = 0.1
        }
    },
    loc_txt = {
        ['name'] = 'Template Tickets',
        ['text'] = {
            [1] = 'Tickets to the Jane Julliet concert, now at{C:money} 0.1${}!',
            [2] = '',
            [3] = '{C:inactive}Art by fromdusktildrawn',
            [4] = 'Ability by me{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
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
        if context.setting_blind  then
            return {
                
                func = function()
                    
                    local current_dollars = G.GAME.dollars
                    local target_dollars = G.GAME.dollars + 0.1
                    local dollar_value = target_dollars - current_dollars
                    ease_dollars(dollar_value)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(0.1), colour = G.C.MONEY})
                    return true
                end
            }
        end
    end
}