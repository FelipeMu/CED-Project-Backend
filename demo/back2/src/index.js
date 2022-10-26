const colors = require('colors');
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();

app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }))
app.use(cors());
app.use(require('./routes/index.js'));



//routes
app.listen(4000);
console.log('** SERVER READY **'.blue);
console.log('Server listening on port:'.magenta + ' 4000'.yellow);