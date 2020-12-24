import React, { Component } from 'react';
import './App.css';

import * as hljs from 'highlight.js';
import Editor from './editor';

import { w3cwebsocket as W3CWebSocket } from "websocket";

const client = new W3CWebSocket('ws://localhost:8080');

class App extends Component {
  

  componentWillMount() {
    client.onopen = () => {
      console.log('WebSocket Client Connected');
    };
    client.onmessage = (message) => {
      console.log(message);
    };
  }
  render() {
    hljs.initHighlightingOnLoad(); 
    return (
      <Editor />
    ); 
  }
}

export default App;