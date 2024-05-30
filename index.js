const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 5002;

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
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

app.use(express.static("public"));

app.get('/', (req, res) => {
    connection.query('SELECT * FROM posts', (err, results) => {
        if (err) {
            console.error('Error fetching posts: ' + err.stack);
            return;
        }

        const posts = results.map(result => {
            console.log(result);
            result.timestamp = result.timestamp.toISOString().split('T')[0];
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

        res.render('posts', { posts: posts });
    });
});

app.get('/new-post', (req, res) => {
    res.render('new-post');
});

app.get('/create-post', (req, res) => {
    const { titel, description, intern, imagePath, notionLink, poster, werkveld } = req.query;

    connection.query('INSERT INTO posts (titel, description, intern, imagePath, notionLink, poster, werkveld) VALUES (?, ?, ?, ?, ?, ?, ?)', [titel, description, intern, imagePath, notionLink, poster, werkveld], (err, results) => {
        if (err) {
            console.error('Error inserting post: ' + err.stack);
            return;
        }

        res.redirect('/');
    });
});


app.listen(port, () => {
    console.log(`listening on http://localhost:${port}`);
});