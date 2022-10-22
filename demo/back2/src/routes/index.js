const { Router } = require('express');
const router = Router();

const {getProfesores, getDatosProfesor, getDatosAdmin, getInformacionProfesor, getInformacionAdmin, getProfesorById, getAdministradores, getCursosById, getListaNombreCursosActuales, getTiposDeEvaluaciones} = require('../controllers/index.controller.js')
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

module.exports = router;

