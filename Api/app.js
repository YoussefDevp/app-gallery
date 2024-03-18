const express = require('express');
var mysql = require('mysql');
const cors = require("cors");
var json = require('json');
const port = 3000
const app = express();
app.use(cors());
app.use(express.json())
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'gallery-art'
  });
  connection.connect();

  app.get('/imagen/blog', (req, res) => {
    connection.query('SELECT * FROM `imagen` WHERE cartgory="blog";', function (error, results, fields) {
      if (error) throw error;
      res.status(200).json(results)
    });
  })

  app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })