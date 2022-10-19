const { Router } = require('express');
const router = Router();

const {getProfesores, getDatosProfesor, getInformacionProfesor, getProfesorById, getAdministradores, getCursosById} = require('../controllers/index.controller.js')
router.get('/profesores', getProfesores);
router.get('/datosprofesor/:correo', getDatosProfesor); // para inicio sesión
router.get('/profesor/:id', getProfesorById);
router.get('/administradores', getAdministradores);
router.get('/miscursos/:id', getCursosById);
router.get('/misdatos/:id', getInformacionProfesor); // para ver datos personales

module.exports = router;

