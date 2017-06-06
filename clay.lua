-- The declared functions have annotations assigned, in order to denote where they were declared.
function zod(a) -- function zod
local b = 50 
if math.max(a,b) <= b then
print("Sorry sir, the input must be higher than fifthy")
elseif math.max(a,b) > b then
print("The number is satisfatory")
end
end 
function lol(a,b) -- function lol
if math.max(a,b) >100 then
print("This number is too high!")
elseif math.max(a,b)< 45  then
 print("This number is average!")
elseif math.max(a,b)<= 0 then
 print("The number must be real and different than zero!")
end
end
function ll(a,b) -- Function ll
local t = {}
print("Enter two numbers: ")
table.insert(t,1,a)
print("Input the second: ")
table.insert(t,2,b)
lol(t["a"],t["b"])
end
function feed(x,z)  -- Function feed.
local g = {}
local a = 100
local b = 0.5
local c
local d
c = math.max(x,z)
d = math.min(x,z)
                  ------------ This is were i left ;;;!
end 
function led() -- Function led() "Probably the "main" function."
local y ={}
local x = {}
print("Welcome!\nPlease enter a number: ")
table.insert(y,1,io.read())
print("Do you wish to use only this number?(y/n)")
table.insert(x,1,io.read())
if x[1] == 'y' then
zod(y[1]) 
elseif x[1] == 'n'  then
print("As you wish\nPlease enter the second number: ")
table.insert(y,2,io.read())
feed(y[1],y[2])
end
end 
led()
