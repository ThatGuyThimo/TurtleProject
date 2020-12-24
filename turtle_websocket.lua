print "starting websocket"
local ws, err = http.websocket("ws://a551147b6570.ngrok.io/")
print(err)
if ws then
   ws.send("Hello");
   print(ws.recieve())
end