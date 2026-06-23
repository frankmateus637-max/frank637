@@ -0,0 +1,24 @@
const mongoose = require('mongoose');

const empleadoSchema = new mongoose.Schema({
  nombre: {
    type: String,
    required: true
  },
  cargo: {
    type: String,
    required: true
  },
  salario: {
    type: Number,
    required: true
  },
  oficina: {
    type: String,
    required: true
  }
}, {
  timestamps: true
});

module.exports = mongoose.model('Empleado', empleadoSchema);
