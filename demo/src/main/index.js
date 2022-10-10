const colors = require('colors');
// Database Conection...
const { Client } = require('pg') //controlador client

//ejemplo conexion a base de datos
const ObtenerProfesores = async () => {
    //
    const client = new Client({
        user: 'postgres',
        host: 'localhost',
        database: 'postgres',
        password: '12345',
        port: 5432,
    });
    
    
    await client.connect(); // Database Conection... clients ~ database
    const res = await client.query("select * from profesor");
    const result = res.rows[0].email;
    await client.end();
    return result;
};

ObtenerProfesores().then(res => {console.log(res)});



