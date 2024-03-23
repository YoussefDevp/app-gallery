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




  app.get('/home', (req, res) => {
    connection.query('SELECT * FROM `paragraph` WHERE category="home";', function (error, textresults, fields) {
      if (error) throw error;
      connection.query('SELECT * FROM `image` WHERE category="home";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].image
          }
        )
        connection.query('SELECT * FROM `title` WHERE category="home";', function (error, tiTresults, fields) {  
          // console.log(tiTresults)
          res.status(200).json({textresults,title:tiTresults[0]})
         
        });
      
      });
     
    });
  })


  app.get('/blog', (req, res) => {
    connection.query('SELECT * FROM `paragraph` WHERE category="blog";', function (error, textresults, fields) {
      if (error) throw error;
      // res.status(200).json(results)
      connection.query('SELECT * FROM `image` WHERE category="blog";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].image
          
        }
        )
        connection.query('SELECT * FROM `title` WHERE category="blog";', function (error, tiTresults, fields) {  
          const data = {textresults,title:tiTresults}

          textresults.map( (item,i) => {
            item.title = tiTresults[i].title
            
          }
          )
          res.status(200).json({textresults:textresults})
          console.log(textresults)
          // tiTresults
         
        });
      });
      
    });
  })



  app.get('/galeria', (req, res) => {
    connection.query('SELECT * FROM `image` WHERE category="galeria";', function (error, results, fields) {
      if (error) throw error;
      res.status(200).json(results)
    });
  })


  app.get('/expo', (req, res) => {
    connection.query('SELECT * FROM `image` WHERE category="expo";', function (error, results, fields) {
      if (error) throw error;
      res.status(200).json(results)
    });
  })

  app.get('/venta', (req, res) => {
    connection.query('SELECT * FROM `paragraph` WHERE category="venta";', function (error, textresults, fields) {
      if (error) throw error;
      connection.query('SELECT * FROM `image` WHERE category="venta";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].image
          }
        )
        connection.query('SELECT * FROM `title` WHERE category="venta";', function (error, tiTresults, fields) {  
          // console.log(tiTresults)
          res.status(200).json({textresults,title:tiTresults[0]})
         
        });
      
      });
     
    });
  })

  app.get('/equipo', (req, res) => {
    connection.query('SELECT * FROM `paragraph` WHERE category="equipo";', function (error, textresults, fields) {
      if (error) throw error;
      connection.query('SELECT * FROM `image` WHERE category="equipo";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].image
          }
        )
        connection.query('SELECT * FROM `title` WHERE category="equipo";', function (error, tiTresults, fields) {  

          const data = {textresults,title:tiTresults}

          textresults.map( (item,i) => {
            item.title = tiTresults[i].title
            
          }
          )
          res.status(200).json({textresults:textresults})
          console.log(textresults)       
        });   
      });
     
    });
  })

  app.get('/artistas', (req, res) => {
    connection.query('SELECT * FROM `paragraph` WHERE category="artistas";', function (error, textresults, fields) {
      if (error) throw error;
      connection.query('SELECT * FROM `image` WHERE category="artistas";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i].image
          }
        )
          res.status(200).json(textresults)
         
        });
      
      });
     
    });



  app.get('/premios', (req, res) => {
    connection.query('SELECT * FROM `paragraph` WHERE category="premios";', function (error, textresults, fields) {
      if (error) throw error;
      connection.query('SELECT * FROM `image` WHERE category="premios";', function (error, imGresults, fields) {
        textresults.map( (item,i) => {
          item.image = imGresults[i]?.image
          }
        )
          res.status(200).json(textresults)
          console.log(imGresults[0].image)
         
        });
      
      });
     
    });

    
  app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })