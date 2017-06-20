function love.load()
love.window.setFullscreen(true,"desktop")
xw,yw = love.graphics.getDimensions()
love.physics.setMeter(20)
langdon = love.physics.newWorld(0,25*20, true)
langdon:setCallbacks(beginContact,endContact,preSolve,postSolve)
    ball = {}
    ball.body = love.physics.newBody(langdon,xw/2,yw/2, "dynamic")
    ball.shape = love.physics.newCircleShape(20)
    ball.f = love.physics.newFixture(ball.body, ball.shape)
    ball.f:setRestitution(0.7)
    ball.f:setUserData("Ball")
    block = {}
    block.body = love.physics.newBody(langdon,xw/2,yw+100)
    block.shape = love.physics.newRectangleShape(400,500)
    block.f = love.physics.newFixture(block.body,block.shape)
    block.f:setRestitution(0.7)
    block.f:setUserData("Block")
     text = ""
     persisting = 0
end
function love.draw()
love.graphics.setColor(255,255,255)
love.graphics.circle("line", ball.body:getX(),ball.body:getY(),ball.shape:getRadius())
love.graphics.setColor(255,255,255)
love.graphics.polygon("line",block.body:getWorldPoints(block.shape:getPoints()))
--love.graphics.print(xw .. "||".. yw)
--love.graphics.print(love.system.getOS(),0,23)
love.graphics.print(text,xw,yw)
end
function love.update(dt)
langdon:update(dt)
if love.keyboard.isDown('space') then
    ball.body:applyForce(0,-1789)
elseif love.keyboard.isDown('right') then
     ball.body:applyForce(2000,0)
elseif love.keyboard.isDown('left') then
     ball.body:applyForce(-2000,0)
end
end
function beginContact(a,b,coll)
x,y = coll:getNormal()
text = text .. "\n" .. a:getUserData() .. " colliding with " .. b:getUserData() .. "with a vector normal of: " .. x ..", " .. y
end
function endContact(a,b,coll)
persisting = 0
text = text .. "\n" .. a:getUserData() .. " uncolliding with " .. b:getUserData()
end
function preSolve(a,b,coll)
      if persisting == 0 then 
       text = text .. "\n" ..a:getUserData() .. " touching " .. b:getUserData()
       elseif persisting < 20 then
        text = text .. " " .. persisting
      end
      persisting = persisting + 1
      end
function endSolve(a,b,coll,normalimpulse,tangentimpulse)
 end
