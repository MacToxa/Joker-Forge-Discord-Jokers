
SMODS.Joker{ --Eugene
    key = "eugene",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Eugene',
        ['text'] = {
            [1] = 'Randomizes played cards',
            [2] = '',
            [3] = '{C:inactive}Art by poe.mojisticle',
            [4] = 'Ability by planetext{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
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
    pools = { ["jfdj_jfdj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            local scored_card = context.other_card
            G.E_MANAGER:add_event(Event({
                func = function()
                    
                    assert(SMODS.change_base(scored_card, pseudorandom_element(SMODS.Suits, 'edit_card_suit').key, pseudorandom_element(SMODS.Ranks, 'edit_card_rank').key))
                    local enhancement_pool = {}
                    for _, enhancement in pairs(G.P_CENTER_POOLS.Enhanced) do
                        if enhancement.key ~= 'm_stone' then
                            enhancement_pool[#enhancement_pool + 1] = enhancement
                        end
                    end
                    local random_enhancement = pseudorandom_element(enhancement_pool, 'edit_card_enhancement')
                    scored_card:set_ability(random_enhancement)
                    local random_seal = SMODS.poll_seal({mod = 10, guaranteed = true})
                    if random_seal then
                        scored_card:set_seal(random_seal, true)
                    end
                    local edition = pseudorandom_element({'e_foil','e_holo','e_polychrome','e_negative'}, 'random edition')
                    if random_edition then
                        scored_card:set_edition(random_edition, true)
                    end
                    card_eval_status_text(scored_card, 'extra', nil, nil, nil, {message = "Card Modified!", colour = G.C.ORANGE})
                    return true
                end
            }))
        end
    end
}