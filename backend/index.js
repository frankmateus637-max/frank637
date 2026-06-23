@@ -0,0 +1,29 @@
const express = require('express');
const cors = require('cors');
const mongoose = require('mongoose');

const app = express();

// Middlewares
app.use(cors());
app.use(express.json());

// Conexión a MongoDB
async function main() {
  try {
    console.log('🔄 Intentando conectar a MongoDB...');
    await mongoose.connect('mongodb://127.0.0.1:27017/empleadosdb');
    console.log('✅ DB is connected');
  } catch (error) {
    console.error('❌ Error connecting to DB:', error);
  }
}
main();

// Rutas
app.use('/api/empleados', require('./routes/empleado.routes'));

// Servidor
app.listen(3000, () => {
  console.log('✅ Servidor corriendo en puerto 3000');
});
