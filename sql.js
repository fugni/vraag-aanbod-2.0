const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
});

function sqlQuery(sql) {
    connection.connect((err) => {
        connection.query(sql, (err, rows) => {
            if (err) {
                console.error("Error connecting: " + err.stack);
                return;
            }

            console.log("Databases: ");
            rows.forEach((row) => {
                console.log(row.Database);
            });
        });
    });
}