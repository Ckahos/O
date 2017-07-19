function love.load()
love.window.setTitle("Demo #1")
ll = love.physics.newWorld(0,145*12, true)
love.physics.setMeter(12)
love.window.setMode(800,640)
love.graphics.setBackgroundColor(0,0,0)
xw,yw = love.graphics.getDimensions()
aa = {}
aa.a = love.physics.newBody(ll,xw/10,yw*0.87,"dynamic")
aa.s = love.physics.newCircleShape(25)
aa.f = love.physics.newFixture(aa.a,aa.s)
ss = {}
ss.a = love.physics.newBody(ll,aa.a:getX(),aa.a:getY()+ 40)
ss.s = love.physics.newRectangleShape(132,35)
ss.f = love.physics.newFixture(ss.a,ss.s)
ss.f:setRestitution(0.987)
end
function love.update(dt)
ll:update(dt)
--if love.keyboard.isDown('right') then
 --          aa.a:setPosition(aa.a:getX() + 10 ,aa.a:getY())
--elseif love.keyboard.isDown('left') then
  --  aa.a:setPosition(aa.a:getX() - 10 ,aa.a:getY())
          
--elseif love.keyboard.isDown('up')  then
    --     aa.a:setPosition(aa.a:getX(),aa.a:getY() - 10)
  --elseif love.keyboard.isDown('down')  then
       --  aa.a:setPosition(aa.a:getX(),aa.a:getY()+ 10)   
--end
end
function love.draw()
love.graphics.setColor(255,255,255,255)
love.graphics.print(xw .. "--" .. yw)
love.graphics.setColor(0,100,0)
love.graphics.circle("fill",aa.a:getX(),aa.a:getY(),aa.s:getRadius())
love.graphics.setColor(255,255,255)
love.graphics.print(aa.a:getX().. "||".. aa.a:getY(),0,35)
love.graphics.setColor(123,222,0)
love.graphics.polygon("fill",ss.a:getWorldPoints(ss.s:getPoints()))
end
function oo()
local a = aa.a
local s = aa.s
local d = aa.f
if aa.a:getX() >= 840  then
 aa.a:setPosition(-40,aa.a:getY())
  elseif aa.a:getX() <= -40 then
         aa.a:setPosition(800,aa.a:getY())
 end
   end