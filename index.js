const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');

const app = express();
const port = 3000;

app.use(cors());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'activityhub'
});

db.connect(err => {
  if (err) {
    console.error('Database verbinden mislukt: ' + err.stack);
    return;
  }
  console.log('Verbonden met MySQL database');
});

app.get('/', (req, res) => {
  res.send('Welkom bij Activityhub')
})

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`)
})

app.get('/api/messages', (req, res) => {
    // alle berichten ophalen
    db.query('SELECT * FROM messages', (err, results) => {
      if (err) {
        res.status(500).send('Database query error');
        return;
      }
      res.json(results);  // verstuur als json
    });
  });
  