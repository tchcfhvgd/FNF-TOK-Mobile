function onCreate()
makeAnimatedLuaSprite('heroesdannce', 'chapters/chapter3/images/background/disco/changingstuff', -400, -160)
addAnimationByPrefix('heroesdannce', 'normal', 'boomheroesbop', 24, false)
setScrollFactor('heroesdannce', 0.9, 0.9)
objectPlayAnimation('heroesdannce', 'normal', true)


makeAnimatedLuaSprite('topstage', 'chapters/chapter3/images/background/disco/changingstuff', -400, -150)
setScrollFactor('topstage', 0.9, 0.9)
addAnimationByPrefix('topstage', 'closed', 'dooropen', 24, false)
objectPlayAnimation('topstage', 'closed', true)
setObjectOrder('topstage', 0)
addLuaSprite('topstage', false)

makeAnimatedLuaSprite('toadboppers', 'chapters/chapter3/images/background/disco/changingstuff', -380, 720)
setScrollFactor('toadboppers', 0.9, 0.9)
addAnimationByPrefix('toadboppers', 'boop', 'frontbop', 24, false)
objectPlayAnimation('toadboppers', 'boop', true)
addLuaSprite('toadboppers', true)

makeLuaSprite('blackbg', 'chapters/chapter2/images/background/std/blackbg', -400, -500)
setProperty('blackbg.alpha', 0.4);
addLuaSprite('blackbg', true)

makeLuaSprite('discoLight', 'chapters/chapter3/images/background/disco/discoLight', -1200, -350)
setProperty('discoLight.alpha', 0.6);
addLuaSprite('discoLight', true)

addLuaSprite('heroesdannce', false)
setObjectOrder('heroesdannce', 1)

end

function onBeatHit()
objectPlayAnimation('toadboppers', 'boop', true)
objectPlayAnimation('heroesdannce', 'normal', true)
end

function onUpdate()
setProperty('discoLight.angle', getProperty('discoLight.angle') - 0.1)
end