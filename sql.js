const mysql = require("mysql");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "vraag_aanbod"
});

connection.connect((err) => {
    if (err) {
        console.error("Error connecting to database: ", err);
        return;
    }

    // Query to get posts from the database
    const query = "SELECT * FROM posts";

    connection.query(query, (err, results) => {
        if (err) {
            console.error("Error executing query: ", err);
            return;
        }

        // Display the posts on a webpage
        results.forEach((post) => {
            // Display post.title and post.content on the webpage
            console.log("Title: ", post.titel);
            console.log("Content: ", post.description);
        });

        // Close the database connection
        connection.end();
    });
});