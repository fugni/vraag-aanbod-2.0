const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 5000;

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'vraag_aanbod'
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to the database: ' + err.stack);
        return;
    }
});

// view engine set to ejs
app.set('view engine', 'ejs');

app.get('/', (req, res) => {
    connection.query('SELECT * FROM posts', (err, results) => {
        if (err) {
            console.error('Error fetching posts: ' + err.stack);
            return;
        }

        const posts = results.map(result => {
            return {
                id: result.id,
                titel: result.titel,
                description: result.description,
                intern: result.intern,
                imagePath: result.imagePath,
                notionLink: result.notionLink,
                poster: result.poster,
                werkveld: result.werkveld,
                timestamp: result.timestamp
            };
        });

        res.render('index', { posts: posts});
    });
});

app.listen(port, () => {
    console.log(`listening on http://localhost:${port}`);
});