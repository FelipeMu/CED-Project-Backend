const { Pool } = require('pg');
const pool = new Pool({
    user: 'postgres',
    host: '170.79.232.136',
    database: 'CED_BD',
    password: '1234',
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
    const response = await pool.query('SELECT tipo_evaluacion.tipo FROM tipo_evaluacion ORDER BY id ASC');
    res.json(response.rows);
};

//CREAR CURSO
const createCurso = async (req,res) => { 
    const {seccion, id_profesor, id_modalidad, codigo_asignatura} = req.body;
    const response = await pool.query('INSERT INTO profesor_dicta (id, seccion, id_profesor, id_modalidad, codigo_asignatura) VALUES ((SELECT MAX(id)+1 FROM profesor_dicta), $1, $2, $3, $4)', [seccion, id_profesor, id_modalidad, codigo_asignatura]);
    res.send("¡Curso creado exitosamente!");
};

//CREAR EVALUACION
const createEvaluacion = async (req,res) => { 
    const {nombre, hora_inicio, hora_termino, semana, fecha, color, detalles, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura, id_admin, id_profesor_dicta} = req.body;
    const response = await pool.query('INSERT INTO programar (nombre, hora_inicio, hora_termino, semana, fecha, color, detalles, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura, id_admin, id_profesor_dicta) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)', [nombre, hora_inicio, hora_termino, semana, fecha, color, detalles, id_tipo_evaluacion, id_calendario, id_modalidad, codigo_asignatura, id_admin, id_profesor_dicta]);
    res.send("¡Evaluación añadida exitosamente!");
};



const getCodigoCurso = async (req,res) => { 
    const response = await pool.query('SELECT asig.nombre FROM asignatura as asig WHERE asig.codigo = $1', [req.params.codigo]);
    res.json(response.rows[0]);
};

const getCodigo = async (req,res) => { 
    const response = await pool.query('SELECT pln.codigo_asignatura as codigo, pln.nivel FROM plan_nivel as pln WHERE pln.codigo_asignatura = (SELECT DISTINCT asig.codigo FROM asignatura as asig WHERE asig.nombre = $1 LIMIT 1)', [req.params.nombre]);
    res.json(response.rows[0]);
};


const putInformacionAdmin = async(req, res) => {
    const {nombre, correo, id_admin} = req.body;
    await pool.query('UPDATE admin SET nombre = $1, correo = $2 WHERE admin.id = $3', [nombre, correo, id_admin]);
    res.send('200');

};
const putInformacionProfesor = async(req, res) =>{
    const {nombre, correo, id_profesor} = req.body;
    await pool.query('UPDATE profesor SET nombre = $1, correo = $2 WHERE profesor.id = $3', [nombre, correo, id_profesor]);
    res.send('200');
};

//OBTENER EVALUACIONES PARA MOSTRAR EN EL CALENDARIO
const getEvaluaciones = async (req,res) => { 
    const response = await pool.query('SELECT pg.id_programar as idevento, pg.nombre as name, pg.hora_inicio as start, pg.hora_termino as end, pg.detalles as details, (SELECT md.tipo_modalidad as modalidad FROM modalidad as md WHERE md.codigo = pg.id_modalidad), (SELECT te.tipo as tipo_evaluacion FROM tipo_evaluacion as te WHERE te.id = pg.id_tipo_evaluacion), pg.color FROM programar as pg WHERE (pg.id_profesor_dicta = $1 AND pg.id_admin = 2) OR pg.id_admin = 1', [req.params.id_profesor]);
    res.json(response.rows);
};

//OBTENER EVENTOS PARA MOSTRAR EN EL CALENDARIO
const getEventos= async (req,res) => { 
    const response = await pool.query('SELECT pg.id_programar as idevento, pg.nombre as name, pg.hora_inicio as start, pg.hora_termino as end, pg.detalles as details, pg.color as color FROM programar as pg WHERE pg.id_admin = $1', [req.params.id_admin]);
    res.json(response.rows);
};

//ELIMINAR UN EVENTO DEL CALENDARIO
const deleteEvento = async (req,res) => { 
    const response = await pool.query('DELETE FROM programar as pg WHERE pg.id_programar = $1', [req.params.ide]);
    res.send('Evento eliminado');
};

//ACTUALIZAR EVENTO
const putEvento = async(req, res) => {
    const {id_programar, detalles, start, end} = req.body;
    await pool.query('UPDATE programar SET detalles = $2, hora_inicio = $3, hora_termino = $4 WHERE programar.id_programar = $1', [id_programar, detalles, start, end]);
    res.send('evento actualizado');

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
    createEvaluacion,
    putInformacionAdmin,
    putInformacionProfesor,
    getCodigoCurso,
    getCodigo,
    getEvaluaciones,
    deleteEvento,
    getEventos,
    putEvento
}
