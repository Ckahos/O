function lol(a,b,c,d,e)
return (a*b*(c^(d*e)))/(a+(b*(c^(d*e)-1)))
end
function ll()
pui["e"] = 2,7182818284590452353602874713527
local pui = {}
print("Insert the initial condition!")
table.insert(pui,1,io.read())
print("Insert the carrying capacity!")
table.insert(pui,2,io.read())
print("Insert the growth rate!")
table.insert(pui,3,io.read())
print("Insert the time of measure!")
table.insert(pui,4,io.read())
print("The final population size is: "..lol(pui[2],pui[1],pui["e"],pui[3],pui[4]))
end
