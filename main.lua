function love.load()
love.window.setFullscreen(true,"desktop")
love.window.setTitle("Meteor jam!")
love.physics.setMeter(20)
langdon = love.physics.newWorld(0,0, true)
xw,yw = love.graphics.getDimensions()
langdon:setCallbacks(beginContact,endContact,preSolve,postSolve)
ship = {}
ship.body = love.physics.newBody(langdon,xw/8,yw/2, "dynamic")
ship.body:setMass(10)
ship.shape = love.physics.newRectangleShape(200, 40)
ship.f = love.physics.newFixture(a.body,a.shape)
ship.f:setUserData("Ship")
meteor = {}
meteor.body = love.physics.newBody(langdon,xw/2,yw/2, "dynamic")
meteor.shape = love.physics.newRectangleShape(20,20)
meteor.f = love.physics.newFixture(b.body,b.shape)
meteor.f:setUserData("Meteor") 
text = ""
persisting = 0
end 
function love.draw()
love.graphics.setBackgroundColor(0,0,0)
love.graphics.setColor(255,255,255,255)
love.graphics.print(ship.body:getX()..'||'.. ship.body:getY())
love.graphics.setColor(100,0,255)
love.graphics.polygon("fill",ship.body:getWorldPoints(ship.shape:getPoints()))
love.graphics.setColor(255,255,255)
love.graphics.polygon( "fill",meteor.body:getWorldPoints(meteor.shape:getPoints()))
love.graphics.setColor(255,255,255)
love.graphics.print(text,10,10) 
end
function love.update(dt)
langdon:update(dt)
  if string.len(text) > 768 then 
     text = ""
   end
  if love.keyboard.isDown('up') then
      a.body:setPosition(ship.body:getX(), ship.body:getY() - 7)
    elseif love.keyboard.isDown('down') then
      a.body:setPosition(ship.body:getX(),ship.body:getY() + 7)
  end
   b.body:setPosition(b.body:getX() - 4,b.body:getY())
end
function beginContact(x,y,coll)
x,y = coll:getNormal()
text = text .. "\n" .. a:getUserData() .. " colliding with " .. b:getUserData() .. " with a vector normal of: " .. x .. ", " ..y
end
function endContact(a,b,coll)
persisting = 0
text = text .. "\n" ..a:getUserData() .. " uncolliding with " .. b:getUserData() 
end
function preSolve(a,b,coll)
 if persisting ==0 then 
     text = text .."\n"..a:getUserData() .. " touching " .. b:getUserData()
     elseif persisting < 20 then
         text = text .. " ".. persisting 
end
persisting = persisting + 1 
end
function postSolve(a,b,coll,normalimpulse,tangentimpulse)
end
