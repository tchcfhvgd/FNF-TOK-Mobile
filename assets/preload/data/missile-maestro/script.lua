local pencilsup = true
local pencilsmovement = true

function onUpdate()
if pencilsup == true and pencilsmovement == true then
pencilsmovement = false
doTweenY('floatup', 'dad', 200, 2, quadInOut)
end

if pencilsup == false and pencilsmovement == true then
pencilsmovement = false
doTweenY('downfloat', 'dad', -100, 2, quadInOut)
end
end

function onTweenCompleted(tag)
if tag == 'floatup' then
pencilsup = false
pencilsmovement = true
end

if tag == 'downfloat' then
pencilsup = true
pencilsmovement = true
end
end