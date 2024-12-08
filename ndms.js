// main.js
const express = require('express');
const app = express();

// Importa la webapp dal modulo
const webApp = require('ndms-module');

// Monta la webapp sul root path "/"
app.use('/', webApp);

// Configura la porta
const PORT = process.env.PORT || 2310;

// Avvia il server
app.listen(PORT, () => {
    console.log(`Server avviato su http://localhost:${PORT}`);
});
