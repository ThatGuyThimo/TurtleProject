-- require("turtle_wsconnect")
print "starting websocket"
ws, err = http.websocket("ws://b9f51fc6ede3.ngrok.io")
if ws then
   ws.send("turtle_websocket")
   local event,url,content = os.pullEvent("websocket_message")
   -- print(ws.receive())
   -- print(content)
   -- shell.run(content)
   if content == 'turtle_detect' then
   require("turtle_detect")
   end
   if content == "forward" then
   turtle.forward()
   end
   -- if content == 'shell.run("turtle_detec")' then
   --    print "yes"
   --    shell.run("turtle_detect")
   -- else 
   --    ws.send("no such command")
   -- end
   ws.close()
else
   print "error"
end