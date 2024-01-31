const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const path = require('path');
const multer = require('multer');
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, 'uploads/'); // specify the destination folder for uploaded files
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + '-' + file.originalname); // generate a unique filename
  },
});
const upload = multer({ storage: storage });
 

const app = express();
const port = process.env.PORT || 3000;

// Database configuration
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Smartviper1975.',
  database: 'lost_and_found',
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL database:', err);
    return;
  }
  console.log('Connected to MySQL database');
});

// Set up middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));
app.use('/node_modules', express.static(path.join(__dirname, 'node_modules')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));



// Set the 'views' directory and use Pug as the view engine
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');


app.get('/', (req, res) => {
  res.render('index');
});

app.get('/submitLostItem', (req, res) => {
  res.render('submitLostItem');
});

app.post('/submitLostItem', upload.single('picture'),(req, res) => {

  

  const { name, date_lost, description, phone_number, email, place_lost } = req.body;
  const picture = req.file ? req.file.path : null;

  // Insert the data into the MySQL database
  const sql = 'INSERT INTO lost_item (name, date_lost, description, picture, phone_number, email, place_lost) VALUES (?, ?, ?, ?, ?, ?, ?)';
  const values = [name, date_lost, description, picture, phone_number, email, place_lost];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('Error inserting lost item data into the database:', err);
      return res.status(500).send('Internal Server Error');
    }

   
    res.redirect('/lostItems');
  });
  
});


app.get('/lostItems', (req, res) => {

    // Retrieve lost items from the database
  db.query('SELECT * FROM lost_item', (err, rows) => {
    if (err) {
      console.error('Error retrieving lost items from the database:', err);
      return res.status(500).send('Internal Server Error');
    }

    
    res.render('displayLostItem', { lostItems: rows });
  });
  
});

app.get('/submitFoundItem', (req, res) => {
  res.render('submitFoundItem');
});

app.post('/submitFoundItem', upload.single('picture'),(req, res) => {
  const { name, date_found, description, phone_number, email, place_found } = req.body;

  const picture = req.file ? req.file.path : null;

  // Insert the data into the MySQL database
  const sql = 'INSERT INTO found_item (name, date_found, description, picture, phone_number, email, place_found) VALUES (?, ?, ?, ?, ?, ?, ?)';
  const values = [name, date_found, description, picture, phone_number, email, place_found];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('Error inserting found item data into the database:', err);
      return res.status(500).send('Internal Server Error');
    }

    res.redirect('/foundItems');
  });
});

app.get('/foundItems', (req, res) => {
  // Retrieve found items from the database
  db.query('SELECT * FROM found_item', (err, rows) => {
    if (err) {
      console.error('Error retrieving found items from the database:', err);
      return res.status(500).send('Internal Server Error');
    }

    res.render('displayFoundItem', { foundItems: rows });
  });
});

app.get('/contactUs', (req, res) => {
  res.render('contactUs');
});

app.post('/contactUs', (req, res) => {
  const { name, email, message } = req.body;

  // Insert the data into the MySQL database
  const sql = 'INSERT INTO contact (name, email, message) VALUES (?, ?, ?)';
  const values = [name, email, message];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('Error inserting contact message into the database:', err);
      return res.status(500).send('Internal Server Error');
    }

    res.redirect('/');
  });
});

app.get('/about', (req, res) => {
  res.render('about');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
