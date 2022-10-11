const express = require('express');
const app = express();

app.use(require('./routes/index.js'));

app.use(express.json());

app.use(express.json());
app.use(express.urlencoded({extended: false})); //para datos desde formularios

//routes
app.use(require('./src/main/index.js'));
app.listen(4000);
console.log('Server listening on port 4000');
