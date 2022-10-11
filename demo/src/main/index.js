const colors = require('colors');
// Database Conection...
const { Pool } = require('pg') //controlador pool

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: '12345',
    port: 5432,
});


//ejemplo conexion a base de datos
const ObtenerProfesores = async () => {
    const res = await pool.query("select * from profesor");
    const result = res.rows;
    return result;
};

ObtenerProfesores().then(res => {console.log(res)});



