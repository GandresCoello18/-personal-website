const express = require('express');
const axios = require('axios');
const { config } = require('../../config/index');
const ruta_api = require('../../util/util');
const router = express.Router();



router.get('/', async function(req, res){
    const diplomas = await axios.get(`${ruta_api.dominio()}/api/sobre-mi?opcion=Diplomas`,{
        headers: { "access-token": config.token }
    });
    const certificados = await axios.get(`${ruta_api.dominio()}/api/sobre-mi?opcion=Certificados`,{
        headers: { "access-token": config.token }
    });
    
    const pasa = diplomas.data;
    const pasa_2 = certificados.data
    res.render('sobre-mi.pug', {diplomas: pasa, certificados: pasa_2} );
});


module.exports = router;