--#Game: The Almost impossible game.
-- Vinicius, make the blocks be generated only after half the screen. 
function love.load()
love.window.setFullscreen(true,"desktop")
xw,yw = love.graphics.getDimensions()
love.physics.setMeter(15)
ll = love.physics.newWorld(0,100*15, true)
a = {}
a.a = love.physics.newBody(ll,xw/10,yw/2,"dynamic")
a.s = love.physics.newCircleShape(15)
a.f = love.physics.newFixture(a.a,a.s)
a.f:setRestitution(0.987)
v = {}
v.a = love.physics.newBody(ll,a.a:getX(),a.a:getY() + 20,"static") -- Make this rotate.
v.s = love.physics.newRectangleShape(200,15) 
v.f = love.physics.newFixture(v.a,v.s)
v.f:setRestitution(0.987)
f = {}
f.a = love.physics.newBody(ll,(xw/2) + 50,yw/2)
f.s = love.physics.newRectangleShape(75,15)
f.f = love.physics.newFixture(f.a,f.s)
end
function love.update(dt)
ll:update(dt)
if love.keyboard.isDown('up') then
      a.a:applyForce(0,-5000)
elseif love.keyboard.isDown('down')  then
     a.a:applyForce(0,5000)
elseif love.keyboard.isDown('right')  then
          a.a:applyForce(5000,0)
elseif love.keyboard.isDown('left') then
                a.a:applyForce(-5000,0)
end
pp()
ss()
end
function love.draw()
love.graphics.setBackgroundColor(0,0,0)
love.graphics.circle("line",a.a:getX(),a.a:getY(),a.s:getRadius())
love.graphics.polygon("line",v.a:getWorldPoints(v.s:getPoints()))
love.graphics.print(xw .. "||" .. yw)
love.graphics.print(a.a:getX() .. "||" .. a.a:getY(),0,35)
love.graphics.polygon("line",f.a:getWorldPoints(f.s:getPoints()))
end
function pp()
if a.a:getX() > xw  then
         a.a:setPosition(-20,a.a:getY())
elseif a.a:getX() < -10 then
     a.a:setPosition(xw + 1, a.a:getY())  
elseif a.a:getY() > yw  then
        a.a:setPosition(a.a:getX(),- 20)
elseif a.a:getY() < 0  then
          a.a:setPosition(a.a:getX(),yw + 20) 
end
end
function ss()
f.a:setPosition(f.a:getX() - 2,f.a:getY())
end
