const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000; // Usa el puerto de Heroku

// Sirve archivos estáticos (HTML, CSS, JS)
app.use(express.static(path.join(__dirname)));

// Ruta principal
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

// Inicia el servidor
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});