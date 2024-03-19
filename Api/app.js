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




  app.get('/blog/posts', (req, res) => {
    connection.query('SELECT * FROM `texto` WHERE category="blog";', function (error, textresults, fields) {
      if (error) throw error;
      // res.status(200).json(results)
      connection.query('SELECT * FROM `imagen` WHERE category="blog";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].imagen
          
        }
        )
        // console.log(textresults)
        res.status(200).json(textresults)
      });
      
    });
  })

  // get venta

  app.get('/venta', (req, res) => {
    connection.query('SELECT * FROM `texto` WHERE category="venta";', function (error, textresults, fields) {
      if (error) throw error;
      // res.status(200).json(results)
      connection.query('SELECT * FROM `imagen` WHERE category="venta";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.images = imGresults.map((item) => {
            return item.imagen
          })
          
        }
        )
        // console.log(textresults)
        res.status(200).json(textresults)
      });
      
    });
  })


  
  app.get('/artistas', (req, res) => {
    connection.query('SELECT * FROM `paragrapho` WHERE category="artistas";', function (error, textresults, fields) {
      if (error) throw error;
      // res.status(200).json(results)
      connection.query('SELECT * FROM `imagen` WHERE category="venta";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.images = imGresults.map((item) => {
            return item.imagen
          })      
        }
        )
        // console.log(textresults)
        res.status(200).json(textresults)
      });
      
    });
  })




  app.get('/home', (req, res) => {
    connection.query('SELECT * FROM `paragrapho` WHERE category="home";', function (error, textresults, fields) {
      if (error) throw error;
      // res.status(200).json(results)
      connection.query('SELECT * FROM `imagen` WHERE category="home";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].imagen
          }
        )
        connection.query('SELECT * FROM `titulo` WHERE category="home";', function (error, tiTresults, fields) {  
          console.log(tiTresults)
          res.status(200).json({textresults,titulo:tiTresults[0]})
         
        });
        // console.log(textresults)
      
      });
     
    });
  })

  app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })