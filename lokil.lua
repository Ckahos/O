 -- Program for logistic models
function ll()
int a,b,c,d
print("Input the carrying capacity:\n");
io.read(a)
print("Insert the intial condition!")
io.read(b)
pui = {}
pui.k = table.insert(pui,1,a)
pui.x = table.insert(pui,2,b)
print("result: "..pui["k"]*pui["x"])
end
ll()
