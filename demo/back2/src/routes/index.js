const { Router } = require('express');
const router = Router();

const {getProfesores, getProfesorById, getAdministradores, getCursosByRut} = require('../controllers/index.controller.js')
router.get('/profesores', getProfesores);
router.get('/profesor/:id', getProfesorById);
router.get('/administradores', getAdministradores);
router.get('/miscursos/:rut', getCursosByRut);
module.exports = router;

