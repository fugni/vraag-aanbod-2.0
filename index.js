const express = require("express");
const path = require("path");

const app = express();
const port = 5000;

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "views/index.html"));
});

app.listen(port, () => {
    console.log("Listening on port " + port);
    console.log("http://localhost:" + port);
});

const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
});

connection.connect((err) => {
    if (err) {
        console.log("Error connecting to MySQL: " + err.stack);
        return;
    }
    console.log("Connected to MySQL as id " + connection.threadId);
});