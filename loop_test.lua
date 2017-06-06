-- Simple principle of loop test.
function oo()
local a
local ll = {}
print("Please insert a number: ")
table.insert(ll,1,io.read())
print("The sequential for this number is:")
if ll[1] > 0  then
a = true
elseif ll[1] >= 100 then
a = false
end
while(a == true) do
ll[1] = ll[1] + 1
end
print(ll[1])
end
oo()
