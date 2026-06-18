// Importamos express
const express = require("express");
const app = express();
const PORT = 3000;

// Middleware para permitir recibir datos en formato JSON
app.use(express.json());

// Base de datos simulada (temporal en memoria)
let usuarios = [];

/* ===============================
   RUTA DE REGISTRO DE USUARIO
================================= */
app.post("/registro", (req, res) => {
  const { usuario, contrasena } = req.body;

  // Validar que se envíen los datos
  if (!usuario || !contrasena) {
    return res.status(400).json({ error: "Faltan datos" });
  }

  // Verificar si el usuario ya existe
  const usuarioExistente = usuarios.find(u => u.usuario === usuario);
  if (usuarioExistente) {
    return res.status(400).json({ error: "El usuario ya está registrado" });
  }

  // Guardar nuevo usuario
  usuarios.push({ usuario, contrasena });
  res.json({ mensaje: "Registro exitoso" });
});

/* ===============================
   RUTA DE INICIO DE SESIÓN (LOGIN)
================================= */
app.post("/login", (req, res) => {
  const { usuario, contrasena } = req.body;

  // Validar que se envíen los datos
  if (!usuario || !contrasena) {
    return res.status(400).json({ error: "Faltan datos" });
  }

  // Buscar usuario registrado
  const usuarioRegistrado = usuarios.find(
    u => u.usuario === usuario && u.contrasena === contrasena
  );

  if (usuarioRegistrado) {
    res.json({ mensaje: "Autenticación satisfactoria" });
  } else {
    res.status(401).json({ error: "Error en la autenticación" });
  }
});

/* ===============================
   INICIO DEL SERVIDOR
================================= */
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
