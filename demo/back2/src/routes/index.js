const { Router } = require('express');
const router = Router();

const {getProfesores, getProfesorById} = require('../controllers/index.controller.js')
router.get('/profesores', getProfesores);
router.get('/profesor/:id', getProfesorById);
module.exports = router;

