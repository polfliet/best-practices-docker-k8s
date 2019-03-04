"use strict";
const path = require("path");
const express = require("express");

// Constants
const PORT = 8080;
const HOST = "0.0.0.0";

var dir = path.join(__dirname, "public");

// App
const app = express();
app.get("/", (req, res) => {
  res.send("<img src=\"/meme.jpg\"></img><p>Let\'s talk about some best practices for Docker & Kubernetes!\n</p>");
});

app.use(express.static(dir));


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
