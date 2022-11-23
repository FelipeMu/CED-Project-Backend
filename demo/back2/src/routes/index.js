const { Router } = require('express');
const router = Router();

const {
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
    getEventos,
    deleteEvento,
    putEvento,
    getDatosSemestre,
    createSemestre,
    deleteSemestre,
    getEventosDelAdmin,
    getEventosDelProfesor,
    getEventosNiveles,
    getEvaluacionesPorNivel
    } = require('../controllers/index.controller.js')

router.get('/profesores', getProfesores);//ruta test

router.get('/datosprofesor/:correo', getDatosProfesor); // para inicio sesión profesor(a)
router.get('/datosadmin/:correo', getDatosAdmin); // para inicio sesión administrador(a)

router.get('/profesor/:id', getProfesorById);
router.get('/administradores', getAdministradores);
router.get('/miscursos/:id', getCursosById); // para vista mis cursos

router.get('/cursosactuales/:id', getListaNombreCursosActuales); // ver los listado de cursos al momento de ingresar una evaluación

router.get('/perfilprofesor/:id', getInformacionProfesor); // para ver datos personales personales--profesor
router.get('/perfiladmin/:id', getInformacionAdmin); // para ver datos personales personales--admin

router.get('/tiposevaluaciones', getTiposDeEvaluaciones); // ver listado de los tipo de evaluaciones existentes

router.post('/crearcurso',createCurso); // Crear curso dado un codigo_asignatura existente en la base de datos 
router.post('/crearevaluacion', createEvaluacion); // Añadir una evaluacion al calendario

router.put('/update/admin', putInformacionAdmin);
router.put('/update/profesor', putInformacionProfesor);

router.get('/infocursobycod/:codigo', getCodigoCurso); //obtener nombre del curso dado su codigo
router.get('/obtenercodigoynivel/:nombre', getCodigo); //obtener el codigo y nivel de curso dado su nombre

router.get('/obtenerevaluaciones/:id', getEvaluaciones); //Obtener por ahora las evaluaciones del profesor
router.get('/obtenereventos/:id_admin', getEventos); //Obtener solo los eventos del administrador

router.delete('/eliminarevento/:ide', deleteEvento); //eliminar un evento (evaluacion o bloqueo de dias) dado su id identificador

router.put('/actualizarevento', putEvento); //actualizar evento (por ahora solo detalles)

router.get('/informacionsemestre',getDatosSemestre); // Obtener información del semestre//usuario admin
 
router.post('/crearsemestre', createSemestre); //crear semestre academico

router.delete('/borrarsemestre', deleteSemestre); // borrar programacion del semestre actual

router.get('/evaluacionespornivel/:nivel', getEvaluacionesPorNivel); // trae las evaluaciones por nivel, usuario administrador

//peticiones para obtener los eventos de ambos tipos de usuarios
router.get('/eventosdeladmin', getEventosDelAdmin); //para admin
router.get('/eventosdelprofesor/:id_profesor', getEventosDelProfesor); //para profesor
router.get('/eventosdelprofesorniveles/:id_profesor', getEventosNiveles); //niveles

module.exports = router;

