
SMODS.Consumable {
    key = 'nothing',
    set = 'Tarot',
    pos = { x = 0, y = 0 },
    loc_txt = {
        name = 'Nothing',
        text = {
            [1] = 'Does nothing?',
            [2] = '',
            [3] = '{C:inactive}Art by fromdusktildrawn',
            [4] = 'Ability by fromdusktildrawn{}'
        }
    },
    cost = 3,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'CustomConsumables',
    can_use = function(self, card)
        return true
    end
}