print "Checking Feul.."

if turtle.getFuelLevel() < 500  then
    fuel =  turtle.getFuelLevel()
    turtle.refuel(1)
    print "Refeuling"
    if turtle.getFuelLevel() == fuel then
        print "No fuel!!"
    end
else
    print "No fuel necessary"
end