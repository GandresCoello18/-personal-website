const express = require('express');
const axios = require('axios');
const router = express.Router();

router.get('/', async function(req, res){
    const datos_proyectos = await axios.get('http://127.0.0.1:5000/api/portafolio');
    const pasa = datos_proyectos.data;
   res.render('portafolio.pug', {datos_proyectos: pasa} );
});


module.exports = router;