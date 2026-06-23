const express = require('express');
const router = express.Router();
const Empleado = require('../models/empleado');

// GET - obtener todos los empleados
router.get('/', async (req, res) => {
  try {
    const empleados = await Empleado.find();
    res.json(empleados);
  } catch (error) {
    res.status(500).json({ message: 'Error al obtener empleados', error });
  }
});

// POST - crear nuevo empleado
router.post('/', async (req, res) => {
  try {
    const nuevoEmpleado = new Empleado(req.body);
    await nuevoEmpleado.save();
    res.json({ message: 'Empleado creado con éxito', empleado: nuevoEmpleado });
  } catch (error) {
    res.status(500).json({ message: 'Error al crear empleado', error });
  }
});

module.exports = router;
