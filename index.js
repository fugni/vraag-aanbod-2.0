// const express = require("express");
// const path = require("path");

// const app = express();
// const port = 5000;

// app.get("/", (req, res) => {
//     res.sendFile(path.join(__dirname, "views/index.html"));
// });

// app.listen(port, () => {
//     console.log("Listening on port " + port);
//     console.log("http://localhost:" + port);
// });

const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "vraag_aanbod"
});

function sqlQuery(sql) {
    connection.connect((err) => {
        connection.query(sql, (err, rows) => {
            if (err) {
                console.error(err.stack);
                return;
            }


            console.log(rows);
        });
    });
}


sqlQuery("SELECT * FROM posts");