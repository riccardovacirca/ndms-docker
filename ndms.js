// main.js
const express = require('express');
const app = express();

let webApp;

try {
    // Tenta di importare la webapp dal modulo
    webApp = require('ndms-module');
    console.log('Modulo ndms-module caricato con successo.');
} catch (error) {
    console.error('Impossibile caricare il modulo ndms-module. Verrà utilizzato un routing alternativo.', error);
}

// Usa la webapp se è stata caricata correttamente
if (webApp) {
    app.use('/', webApp);
} else {
    // Routing alternativo
    app.get('/', (req, res) => {
        res.send('Hello, World!');
    });
}

// Configura la porta
const PORT = process.env.PORT || 2310;

// Avvia il server
app.listen(PORT, () => {
    console.log(`Server avviato su http://localhost:${PORT}`);
});
