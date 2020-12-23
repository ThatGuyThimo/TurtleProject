print "starting digging script"

turtle.detect()
if turtle.detect() == true then
    print "front"
    local success, data = turtle.inspect()
    if success then
        print("Block name: ", data.name)
        print("Block metadata: ", data.metadata)
end
end
turtle.detectUp()
if turtle.detectUp() == true then
    print "Up"
    turtle.inspectUp()
    print(turtle.inspectUp())
end
turtle.detectDown()
if turtle.detectDown() == true then
    print "Down"
    turtle.inspectDown()
    print(turtle.inspectDown())
end
turtle.turnLeft()
turtle.detect()
if turtle.detect() == true then
    print "Left"
    turtle.inspect()
    print(turtle.inspect())
end
turtle.turnRight()
turtle.turnRight()
turtle.detect()
if turtle.detect() == true then
    print "Right"
    turtle.inspect()
    print(turtle.inspect())
end
turtle.turnLeft()
