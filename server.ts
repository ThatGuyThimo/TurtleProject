import * as express from 'express';
import * as http from 'http';
import * as WebSocket from 'ws';
import { connect } from 'ngrok';

const app = express();
const server = http.createServer(app);

// const turtles: { [id: number]: Turtle } = {};

const wss = new WebSocket.Server({ port: 8080 });

wss.on('connection', (ws: WebSocket) => {
  // console.log(ws);
  ws.on('message', (message: string) => {
    console.log('received: %s', message);
    // ws.send(`hello, you sent -> ${message}`);
    ws.send('turtle_detect');
  });

  // ws.send('Hi there, I am a WebSocket server');
});
(async () => {
  const url = await connect(8080);
  console.log(url);
})();

// server.listen(process.env.PORT || 8080, () => {
//   console.log(`Mining Turtle Communicator started on port ${process.env.PORT || 8080}`);
// });

// function serializeTurtles() {
// 	return JSON.stringify(Object.values(turtles));
// }