const { Router } = require('express');
const router = Router();

const {getProfesores, getDatosProfesor, getDatosAdmin, getInformacionProfesor, getInformacionAdmin, getProfesorById, getAdministradores, getCursosById} = require('../controllers/index.controller.js')
router.get('/profesores', getProfesores);//ruta test

router.get('/datosprofesor/:correo', getDatosProfesor); // para inicio sesión profesor(a)
router.get('/datosadmin/:correo', getDatosAdmin); // para inicio sesión administrador(a)

router.get('/profesor/:id', getProfesorById);
router.get('/administradores', getAdministradores);
router.get('/miscursos/:id', getCursosById);

router.get('/perfilprofesor/:id', getInformacionProfesor); // para ver datos personales personales--profesor
router.get('/perfiladmin/:id', getInformacionAdmin); // para ver datos personales personales--admin

module.exports = router;

