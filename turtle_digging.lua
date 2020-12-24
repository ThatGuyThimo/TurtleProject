print "starting digging script"

while turtle.getFuelLevel() >200 do
turtle.detect()
if turtle.detect() == true then
    local success, data = turtle.inspect()
    if success then
        print("Block front: ", data.name)
        turtle.dig()
        -- print("Block metadata: ", data.metadata)
    end
end
turtle.detectUp()
if turtle.detectUp() == true then
    local success, data = turtle.inspectUp()
    if success then
        print("Block up: ", data.name)
        if data.name == "minecraft:iron_ore"  --[[make an array later]] then
            print "digging"
            turtle.digUp()
        elseif data.name == "minecraft:diamond_ore" then
            print "digging"
            turtle.digUp()
        elseif data.name == "minecraft:gold_ore" then
            print "digging"
            turtle.digUp()
        elseif data.name == "minecraft:redstone_ore" then
            print "digging"
            turtle.digUp()
        elseif data.name == "minecraft:coal_ore" then
            print "digging"
            turtle.digUp()
        end
    end
end
turtle.detectDown()
if turtle.detectDown() == true then
    local success, data = turtle.inspectDown()
    if success then
        print("Block down: ", data.name)
        if data.name == "minecraft:iron_ore"  --[[make an array later]] then
            print "digging"
            turtle.digDown()
        elseif data.name == "minecraft:diamond_ore" then
            print "digging"
            turtle.digDown()
        elseif data.name == "minecraft:gold_ore" then
            print "digging"
            turtle.digDown()
        elseif data.name == "minecraft:redstone_ore" then
            print "digging"
            turtle.digDown()
        elseif data.name == "minecraft:coal_ore" then
            print "digging"
            turtle.digDown()
        end
    end
end
turtle.turnLeft()
turtle.detect()
if turtle.detect() == true then
    local success, data = turtle.inspect()
    if success then
        print("Block left: ", data.name)
        if data.name == "minecraft:iron_ore"  --[[make an array later]] then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:diamond_ore" then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:gold_ore" then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:redstone_ore" then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:coal_ore" then
            print "digging"
            turtle.dig()
        end
    end
end
turtle.turnRight()
turtle.turnRight()
turtle.detect()
if turtle.detect() == true then
    local success, data = turtle.inspect()
    if success then
        print("Block right: ", data.name)
        if data.name == "minecraft:iron_ore"  --[[make an array later]] then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:diamond_ore" then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:gold_ore" then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:redstone_ore" then
            print "digging"
            turtle.dig()
        elseif data.name == "minecraft:coal_ore" then
            print "digging"
            turtle.dig()
        end
    end
end
turtle.turnLeft()
turtle.forward()
end
print "not enough fuel"