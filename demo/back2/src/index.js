const express = require('express');
const app = express();
app.use(require('./routes/index.js'));
app.use(express.json());


//routes
app.listen(4000);
console.log('Server listening on port 4000');