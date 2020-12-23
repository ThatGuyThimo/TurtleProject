print "Detecting Blocks"

turtle.detect()
if turtle.detect() == true then
    print "front"
end
turtle.detectUp()
if turtle.detectUp() == true then
    print "Up"
end
turtle.detectDown()
if turtle.detectDown() == true then
    print "Down"
end
turtle.turnLeft()
turtle.detect()
if turtle.detect() == true then
    print "Left"
end
turtle.turnRight()
turtle.turnRight()
turtle.detect()
if turtle.detect() == true then
    print "Right"
end
turtle.turnLeft()
