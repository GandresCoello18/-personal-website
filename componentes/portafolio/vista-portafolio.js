const express = require('express');
const axios = require('axios');
const ruta_api = require('../../util/util');
const cache = require('../../util/cacheResponse');
const { FIVE_MINUTES_IN_SECONDS, SIXTY_MINUTES_IN_SECONDS } = require('../../util/time');
const router = express.Router();



router.get('/', async function(req, res){
    cache(res, FIVE_MINUTES_IN_SECONDS);
    const datos_proyectos = await axios.get(`${ruta_api.dominio()}/api/portafolio`);
    const pasa = datos_proyectos.data;
   res.render('portafolio.pug', {datos_proyectos: pasa} );
});


module.exports = router;