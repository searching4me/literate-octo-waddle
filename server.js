const express = require('express');
const app = express();
const port = 3000;

// Sett EJS som tømmemotor (templating engine)
app.set('view engine', 'ejs');

// Gjør 'public'-mappen tilgjengelig for statiske filer (stilark, bilder)
app.use(express.static('public'));

// Rute for IT-avdelingens velkomstside
app.get('/', (req, res) => {
    res.render('velkomst', {
        kommuneNavn: "Fjordvik kommune",
        epost: "it-hjelp@fjordvik.kommune.no",
        telefon: "12 34 56 78"
    });
});

app.listen(port, () => {
    console.log(`Server kjører på http://localhost:${port}`);
});