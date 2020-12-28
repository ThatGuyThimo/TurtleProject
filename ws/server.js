const http = require('http');
const WebSocket = require('ws');
const wss = new WebSocket.Server({ port: 8080 });
const url = require('url');

wss.on('connection', function connection(ws) {
  ws.on('open', function open() {
    console.log('connected');
  });
  ws.on('message', function incoming(message) {
    console.log('received: %s', message);
  });

  ws.send('something');
});