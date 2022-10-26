const { Pool } = require('pg');
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: '12345',
    port: 5432,
});

const getProfesores = async (req, res) => {
    const response = await pool.query('SELECT * FROM profesor');
    res.json(response.rows);
};

const getDatosProfesor = async (req, res) => {
    const response = await pool.query('SELECT * FROM profesor WHERE correo = $1', [req.params.correo]);
    res.json(response.rows[0]);
};

const getDatosAdmin = async (req, res) => {
    const response = await pool.query('SELECT * FROM admin WHERE correo = $1', [req.params.correo]);
    res.json(response.rows[0]);
};

const getInformacionProfesor = async (req, res) => {
    const response = await pool.query('SELECT * FROM profesor WHERE id = $1', [req.params.id]);
    res.json(response.rows[0]);
};

const getInformacionAdmin = async (req, res) => {
    const response = await pool.query('SELECT * FROM admin WHERE id = $1', [req.params.id]);
    res.json(response.rows[0]);
};

const getProfesorById = async (req, res) => {
    const response = await pool.query('SELECT * FROM profesor WHERE id = $1', [req.params.id]);
    res.json(response.rows[0]);
};

const getAdministradores = async (req, res) => {
    const response = await pool.query('SELECT * FROM admin');
    res.json(response.rows);
};

const getCursosById = async (req, res) => {
    const response = await pool.query("SELECT DISTINCT pd.id, asig.nombre, asig.horas_semanales as hrs_semanal, pn.nivel, pd.seccion, md.tipo_modalidad as modalidad, '2/2022' as periodo FROM asignatura as asig, profesor_dicta as pd, plan_nivel as pn, modalidad as md, profesor as pr WHERE pd.id_profesor = $1 AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura", [req.params.id]);
    res.json(response.rows);
};

const getListaNombreCursosActuales = async (req, res) => {
    const response = await pool.query("SELECT DISTINCT asig.nombre FROM asignatura as asig, profesor_dicta as pd, plan_nivel as pn, modalidad as md, profesor as pr WHERE pd.id_profesor = $1 AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura ORDER BY asig.nombre", [req.params.id]);
    res.json(response.rows);
};

const getTiposDeEvaluaciones = async (req, res) => {
    const response = await pool.query('SELECT te.tipo FROM tipo_evaluacion as te ORDER BY te.tipo');
    res.json(response.rows);
};


const createCurso = async (req,res) => { 
    const {seccion, id_profesor, id_modalidad, codigo_asignatura} = req.body;
    const response = await pool.query('INSERT INTO profesor_dicta (id, seccion, id_profesor, id_modalidad, codigo_asignatura) VALUES ((SELECT MAX(id)+1 FROM profesor_dicta), $1, $2, $3, $4)', [seccion, id_profesor, id_modalidad, codigo_asignatura]);
    res.send("¡Curso creado exitosamente!");
};



const getCodigoCurso = async (req,res) => { 
    const response = await pool.query('SELECT asig.nombre FROM asignatura as asig WHERE asig.codigo = $1', [req.params.codigo]);
    res.json(response.rows[0]);
};



const putInformacionAdmin = async(req, res) => {
    const id = req.params.id;
    const {nombre, correo} = req.body;
    await pool.query('UPDATE FROM admin SET nombre = $1, correo = $2 WHERE id = $3', [
        nombre,
        correo,
        id
    ])
    res.send('Usuario administrador actualizado.')

};
const putInformacionProfesor = async(req, res) =>{
    const {nombre, correo, id_profesor} = req.body;
    await pool.query('UPDATE profesor SET nombre = $1, correo = $2 WHERE profesor.id = $3', [nombre, correo, id_profesor]);
    res.send('200');
};


module.exports = {
    getProfesores,
    getDatosProfesor,
    getDatosAdmin,
    getInformacionProfesor,
    getInformacionAdmin,
    getProfesorById,
    getAdministradores,
    getCursosById,
    getListaNombreCursosActuales,
    getTiposDeEvaluaciones,
    createCurso,
    putInformacionAdmin,
    putInformacionProfesor,
    getCodigoCurso
}
