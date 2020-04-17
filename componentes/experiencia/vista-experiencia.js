const express = require('express');
const axios = require('axios');
const ruta_api = require('../../util/util');
const router = express.Router();

router.get('/', async function(req, res){
    const experiencia = await axios.get(`${ruta_api.dominio}/api/experiencia`);
    
    const pasa = experiencia.data
   res.render('experiencia.pug', {experiencia: pasa} );
});


module.exports = router;