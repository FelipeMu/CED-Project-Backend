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
    deleteEvento
    } = require('../controllers/index.controller.js')

router.get('/profesores', getProfesores);//ruta test

router.get('/datosprofesor/:correo', getDatosProfesor); // para inicio sesión profesor(a)
router.get('/datosadmin/:correo', getDatosAdmin); // para inicio sesión administrador(a)

router.get('/profesor/:id', getProfesorById);
router.get('/administradores', getAdministradores);
router.get('/miscursos/:id', getCursosById); // para vista mis cursos
router.get('/cursosactuales/:id',getListaNombreCursosActuales); // ver los listado de cursos al momento de ingresar una evaluacion

router.get('/perfilprofesor/:id', getInformacionProfesor); // para ver datos personales personales--profesor
router.get('/perfiladmin/:id', getInformacionAdmin); // para ver datos personales personales--admin

router.get('/tiposevaluaciones', getTiposDeEvaluaciones); // ver listado de los tipo de evaluaciones existentes

router.post('/crearcurso',createCurso); // Crear curso dado un codigo_asignatura existente en la base de datos 
router.post('/crearevaluacion', createEvaluacion); // Añadir una evaluacion al calendario

router.put('/update/admin', putInformacionAdmin);
router.put('/update/profesor', putInformacionProfesor);

router.get('/infocursobycod/:codigo', getCodigoCurso); //obtener nombre del curso dado su codigo
router.get('/obtenercodigoynivel/:nombre', getCodigo); //obtener el codigo y nivel de curso dado su nombre

router.get('/obtenerevaluaciones/:id_profesor', getEvaluaciones); //Obtener por ahora las evaluaciones del profesor 

router.delete('/eliminarevento/:ide', deleteEvento); //eliminar un evento (evaluacion o bloqueo de dias) dado su id identificador
 

module.exports = router;

