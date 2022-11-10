const { Pool } = require('pg');
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'prueba',
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
//obtener cursos dado el id del profesor
const getCursosById = async (req, res) => {
    const response = await pool.query("SELECT DISTINCT pd.id, pd.codigo_asignatura, asig.nombre, asig.horas_semanales as hrs_semanal, pn.nivel, pd.seccion, md.tipo_modalidad as modalidad, '2/2022' as periodo FROM asignatura as asig, profesor_dicta as pd, plan_nivel as pn, modalidad as md, profesor as pr WHERE pd.id_profesor = $1 AND md.id = pd.id_modalidad AND asig.codigo = pd.codigo_asignatura AND asig.codigo = pn.codigo_asignatura", [req.params.id]);
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
    const response1 = await pool.query('SELECT DISTINCT pr.id as idevento, pr.nombre as name, pr.hora_inicio as start, pr.hora_termino as end, pr.detalles as details, (SELECT md.tipo_modalidad as modalidad FROM modalidad as md WHERE md.codigo = pr.id_modalidad), (SELECT te.tipo as tipo_evaluacion FROM tipo_evaluacion as te WHERE te.id = pr.id_tipo_evaluacion), pr.color FROM programar as pr WHERE pr.id_admin = $1',[req.params.id]);
    const response2= await pool.query('SELECT DISTINCT pr.id as idevento, pr.nombre as name, pr.hora_inicio as start, pr.hora_termino as end, pr.detalles as details,  (SELECT md.tipo_modalidad as modalidad FROM modalidad as md WHERE md.codigo = pr.id_modalidad),  (SELECT te.tipo as tipo_evaluacion FROM tipo_evaluacion as te WHERE te.id = pr.id_tipo_evaluacion), pr.color FROM (SELECT DISTINCT pr.id as id_pr_otros, prof.id_pr_prof FROM (SELECT DISTINCT  pl.nivel as nivel_pd, pl.codigo_asignatura, pr.id as id_pr_prof, pl.nivel + 1 as nivelUp, pl.nivel -1 as nivelDown FROM profesor_dicta as pd, plan_nivel as pl, programar as pr, asignatura as asi WHERE pd.id_profesor = $1 and pd.codigo_asignatura = pl.codigo_asignatura and pd.id = pr.id_profesor_dicta and pr.id_admin = 2) as prof, plan_nivel as pl, programar as pr WHERE ((pl.nivel = prof.nivelUp or pl.nivel = prof.nivelDown) and pr.codigo_asignatura = pl.codigo_asignatura) and pr.id_admin = 2) as ids, (SELECT DISTINCT pr.id as id_pr_prof FROM profesor_dicta as pd, plan_nivel as pl, programar as pr WHERE pd.id_profesor = $1 and pd.codigo_asignatura = pl.codigo_asignatura and pd.id = pr.id_profesor_dicta and pr.id_admin = 2) as idss, programar as pr  WHERE (pr.id = ids.id_pr_otros) or (pr.id = idss.id_pr_prof)',[req.params.id]);  
    const obj1 = JSON.stringify(response1.rows);
    const obj2 = JSON.stringify(response2.rows);
    const objData1 = JSON.parse(obj1);
    const objData2 = JSON.parse(obj2);
    const objData = objData1.concat(objData2);
    
    if (response2.rows === 0){
        res.json(response1.rows);
    }
    else{
        res.json(objData);
    }
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


//OBTENER INFORMACIÓN DEL SEMESTRE / USUARIO ADMIN

const getDatosSemestre = async (req,res) => { 
    const response = await pool.query('SELECT cal.fecha_inicio, cal.fecha_termino, cal.semanas_totales, cal.periodo FROM calendario as cal ORDER BY cal.id DESC LIMIT 1');
    res.json(response.rows[0]);
};

//CREAR NUEVO SEMESTRE ACADEMICO

const createSemestre = async (req,res) => { 
    const {fecha_inicio, fecha_termino, semanas_totales, periodo, id_admin} = req.body;
    const response = await pool.query('INSERT INTO calendario (fecha_inicio, fecha_termino, semanas_totales, periodo, id_admin) VALUES ($1, $2, $3, $4, $5)', [fecha_inicio, fecha_termino, semanas_totales, periodo, id_admin]);
    res.send("¡Semestre creado!");
};

// BORRAR PROGRAMCIÓN SEMESTRE ACTUAL
const deleteSemestre = async (req,res) => { 
    const response = await pool.query('DELETE FROM programar');
    res.send('Programación semestral eleminada');
};

//////////////////////// TRAER EVENTOS ////////////////////////

//ADMIN
const getEventosDelAdmin = async (req,res) => { 
    const response = await pool.query('SELECT DISTINCT pr.id as idevento, pr.nombre as name, pr.hora_inicio as start, pr.hora_termino as end, pr.detalles as details, (SELECT md.tipo_modalidad as modalidad FROM modalidad as md WHERE md.codigo = pr.id_modalidad), (SELECT te.tipo as tipo_evaluacion FROM tipo_evaluacion as te WHERE te.id = pr.id_tipo_evaluacion), pr.color FROM programar as pr WHERE pr.id_admin = 1');
    res.json(response.rows);
};

//PROFESOR
const getEventosDelProfesor = async (req,res) => { 
    const response = await pool.query('SELECT DISTINCT pr.id as idevento, pr.nombre as name, pr.hora_inicio as start, pr.hora_termino as end, pr.detalles as details, (SELECT md.tipo_modalidad as modalidad FROM modalidad as md WHERE md.codigo = pr.id_modalidad), (SELECT te.tipo as tipo_evaluacion FROM tipo_evaluacion as te WHERE te.id = pr.id_tipo_evaluacion), pr.color, idss.id_prof as id_profesor FROM (SELECT DISTINCT pr.id as id_pr_prof, pd.id_profesor as id_prof FROM profesor_dicta as pd, plan_nivel as pl, programar as pr WHERE pd.id_profesor = $1 and pd.codigo_asignatura = pl.codigo_asignatura and pd.id = pr.id_profesor_dicta and pr.id_admin = 2) as idss, programar as pr WHERE pr.id = idss.id_pr_prof', [req.params.id_profesor]);
    res.json(response.rows);
};

//NIVELES +1 Y-1
const getEventosNiveles= async (req,res) => { 
    const response = await pool.query('SELECT DISTINCT pr.id as idevento, pr.nombre as name, pr.hora_inicio as start, pr.hora_termino as end, pr.detalles as details, (SELECT md.tipo_modalidad as modalidad FROM modalidad as md WHERE md.codigo = pr.id_modalidad), (SELECT te.tipo as tipo_evaluacion FROM tipo_evaluacion as te WHERE te.id = pr.id_tipo_evaluacion), pr.color FROM (SELECT DISTINCT pr.id as id_pr_otros FROM (SELECT DISTINCT  pl.nivel as nivel_pd, pd.codigo_asignatura, pl.nivel + 1 as nivelUp, pl.nivel -1 as nivelDown, pd.id as id_ FROM profesor_dicta as pd, plan_nivel as pl WHERE pd.id_profesor = $1 and pd.codigo_asignatura = pl.codigo_asignatura) as prof, plan_nivel as pl, programar as pr, profesor_dicta as pd WHERE ((pl.nivel = prof.nivelUp or pl.nivel = prof.nivelDown) and pr.codigo_asignatura = pl.codigo_asignatura) and pr.id_admin = 2 and (prof.id_ != pr.id_profesor_dicta)) as ids, programar as pr WHERE pr.id = ids.id_pr_otros', [req.params.id_profesor]);
    res.json(response.rows);
};
///////////////////////////////////////////////////////////

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
    putEvento,
    getDatosSemestre,
    createSemestre,
    deleteSemestre,
    getEventosDelAdmin,
    getEventosDelProfesor,
    getEventosNiveles
}
