const express = require('express');
const axios = require('axios');
const router = express.Router();

router.get('/', async function(req, res){
    const diplomas = await axios.get('http://127.0.0.1:5000/api/sobre-mi?opcion=Diplomas');
    const certificados = await axios.get('http://127.0.0.1:5000/api/sobre-mi?opcion=Certificados');
    
    const pasa = diplomas.data;
    const pasa_2 = certificados.data
   res.render('sobre-mi.pug', {diplomas: pasa, certificados: pasa_2} );
});


module.exports = router;