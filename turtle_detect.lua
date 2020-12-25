-- require("turtle_wsconnect")
-- print "starting websocket"
-- ws, err = http.websocket("ws://9c58d0d5da33.ngrok.io")
print "Detecting Blocks"

turtle.detect()
if turtle.detect() == true then
    local success, data = turtle.inspect()
    if success then
        print("Block front: ", data.name)
        local block = data
        ws.send(block)
    end
end
turtle.detectUp()
if turtle.detectUp() == true then
    local success, data = turtle.inspectUp()
    if success then
        print("Block up: ", data.name)
        local block = data
        ws.send(block)
    end
end
turtle.detectDown()
if turtle.detectDown() == true then
    local success, data = turtle.inspectDown()
    if success then
        print("Block down: ", data.name)
        local block = data
        ws.send(block)
    end
end
turtle.turnLeft()
turtle.detect()
if turtle.detect() == true then
    local success, data = turtle.inspect()
    if success then
        print("Block left: ", data.name)
        local block = data
        ws.send(block)
    end
end
turtle.turnRight()
turtle.turnRight()
turtle.detect()
if turtle.detect() == true then
    local success, data = turtle.inspect()
    if success then
        print("Block right: ", data.name)
        local block = data
        ws.send(block)
    end
end
turtle.turnLeft()
