-- This program is built for a population with two individual types.
function mclovin(a,b,c,d)
a = b*(c^(d))
end
function p(a,b,c)
 return (a+b)/c
end
function ll()
 local bread ={}
 local o = {}
  print("Welcome to the selection Program!!")
  print("Insert the population size:")
   table.insert(o,1,io.read())
  print("Insert the number of types observed in the population ")
    table.insert(o,2,io.read())
  print("Insert the sum of their fitness rates:")
    table.insert(o,3,io.read())
    print("Input the growth rate of type A:")
      table.insert(bread,1,io.read())
      print("Input the growth rate of type B:")
          table.insert(bread,2,io.read())
     print("Input the measurement time")
         table.insert(bread,3,io.read())
     print("Input the number of individuals of type A:")
        table.insert(bread,4,io.read())
        print("Enter the number of individuals of type B:")
          table.insert(bread,5,io.read())        
end
ll()