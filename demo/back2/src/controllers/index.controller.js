const {Pool} = require('pg');
const pool = new Pool ({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: '12345',
    port: 5432,
 });

const getProfesores = async (req,res) => { 
    const response = await pool.query('SELECT * FROM profesor');
    res.json(response.rows);
};


const getProfesorById = async (req,res) => { 
    const response = await pool.query('SELECT * FROM profesor WHERE id = $1', [req.params.id]);
    res.json(response.rows[0]);
}
module.exports = {getProfesores, getProfesorById}
