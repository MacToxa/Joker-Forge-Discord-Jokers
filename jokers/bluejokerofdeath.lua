
SMODS.Joker{ --Blue Joker Of Death
    key = "bluejokerofdeath",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Blue Joker Of Death',
        ['text'] = {
            [1] = 'That\'s not {C:blue}Blueprint{}...{C:red} or is it{}?',
            [2] = '',
            [3] = '{C:inactive}Art by h0tp1nkl3monade',
            [4] = 'Ability by me{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
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
        if context.buying_card and context.card.config.center.key == self.key and context.cardarea == G.jokers  then
            error("I call for the crash")
        end
    end
}