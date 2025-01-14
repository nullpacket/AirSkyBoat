-----------------------------------
--  Winds of Oblivion
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
require("scripts/globals/status")
local ID = require("scripts/zones/Empyreal_Paradox/IDs")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    mob:showText(mob, ID.text.PROMATHIA_TEXT + 6)
    local typeEffect = xi.effect.AMNESIA
    local power = 30
    local duration = 75

    skill:setMsg(xi.mobskills.mobStatusEffectMove(mob, target, typeEffect, power, 0, duration))

    return typeEffect
end

return mobskillObject
