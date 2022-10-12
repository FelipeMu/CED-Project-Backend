const express = require('express');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(require('./routes/index.js'));
app.use(express.json());


//routes
app.listen(4000);
console.log('Server listening on port 4000');