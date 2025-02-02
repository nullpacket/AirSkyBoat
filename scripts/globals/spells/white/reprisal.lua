-----------------------------------
-- Spell: Reprisal
-----------------------------------
require("scripts/globals/magic")
require("scripts/globals/msg")
require("scripts/globals/status")
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    local duration         = xi.magic.calculateDuration(60, spell:getSkillType(), spell:getSpellGroup(), caster, target)
    local reflectedPercent = 33
    local typeEffect       = xi.effect.REPRISAL

    if target:addStatusEffect(typeEffect, reflectedPercent, 0, duration) then
        spell:setMsg(xi.msg.basic.MAGIC_GAIN_EFFECT)
    else
        spell:setMsg(xi.msg.basic.MAGIC_NO_EFFECT)
    end

    return typeEffect
end

return spellObject
