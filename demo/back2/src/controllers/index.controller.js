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

const getDatosProfesor = async (req,res) => {
    const response = await pool.query('SELECT * FROM profesor WHERE correo = $1', [req.params.correo]);
    res.json(response.rows[0]);
};


const getProfesorById = async (req,res) => { 
    const response = await pool.query('SELECT * FROM profesor WHERE id = $1', [req.params.id]);
    res.json(response.rows[0]);
};

const getAdministradores = async (req,res) => { 
    const response = await pool.query('SELECT * FROM admin');
    res.json(response.rows);
};

const getCursosByRut = async (req, res) => {
    const response = await pool.query("SELECT DISTINCT pd.id, asig.nombre, asig.horas_semanales, pn.nivel, pd.seccion, md.tipo_modalidad, '2/2022' as periodo FROM asignatura as asig, profesor_dicta as pd, plan_nivel as pn, modalidad as md, profesor as pr WHERE pr.rut = $1 AND pr.id = pd.id_profesor AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura",[req.params.rut]);
    res.json(response.rows);
};

module.exports = {getProfesores, getDatosProfesor, getProfesorById, getAdministradores, getCursosByRut}
