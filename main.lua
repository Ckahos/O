function love.load()
love.window.setFullscreen(true,"desktop")
love.physics.setMeter(20)
langdon = love.physics.newWorld(0,15.089*20, true)
xw,yw = love.graphics.getDimensions()
hun = {}
hun.body = love.physics.newBody(langdon,xw/2,yw/2, "dynamic")
hun.shape = love.physics.newCircleShape(20)
hun.f = love.physics.newFixture(hun.body,hun.shape)
hun.f:getRestitution(0.89976)
ujj = {}
ujj.body = love.physics.newBody(langdon, xw/2, yw * 2)
ujj.shape = love.physics.newRectangleShape(200,400)
ujj.f = love.physics.newFixture(ujj.body,ujj.shape)
ujj.f:setRestitution(0.89098)
r_1 = {}
r_1.body = love.physics.newBody(langdon,xw/4, yw/3)
r_1.shape = love.physics.newRectangleShape(200,200)
r_1.f = love.physics.newFixture(r_1.body,r_1.shape)
r_1.f:setRestitution(0.987678)
end
function love.draw()
love.graphics.setBackgroundColor(255,255,255,255)
love.graphics.setColor(0,0,0)
love.graphics.circle("line",hun.body:getX(),hun.body:getY(),hun.shape:getRadius())
love.graphics.setColor(0,0,0)
love.graphics.polygon("line",ujj.body:getWorldPoints(ujj.shape:getPoints()))
love.graphics.setColor(255,0,121)
love.graphics.print(hun.body:getX().. "||".. hun.body:getY())
love.graphics.setColor(0,0,0)
love.graphics.polygon("line",r_1.body:getWorldPoints(r_1.shape:getPoints()))
love.graphics.print(xw .. "||".. yw,0,20)
end
function love.update(dt)
langdon:update(dt)
if love.keyboard.isDown('right') then
    hun.body:applyForce(1000,0) 
elseif love.keyboard.isDown('left') then
     hun.body:applyForce(- 1000,0)
     end
     end
