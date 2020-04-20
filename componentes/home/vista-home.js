const express = require('express');
const axios = require('axios');
const { config } = require('../../config/index');
const ruta_api = require('../../util/util');
const cache = require('../../util/cacheResponse');
const { FIVE_MINUTES_IN_SECONDS, SIXTY_MINUTES_IN_SECONDS } = require('../../util/time');
const router = express.Router();



router.get('/', async function(req, res){
    cache(res, FIVE_MINUTES_IN_SECONDS);
    const proyecto = await axios.get(`${ruta_api.dominio()}/api?opcion=recientes_proyectos`,{
        headers: { "access-token": config.token }
    });
    const articulos = await axios.get(`${ruta_api.dominio()}/api?opcion=recientes_articulos`, {
        headers:{ "access-token": config.token }
    });
    
    const pasa = proyecto.data;
    const pasa_2 = articulos.data
   res.render('index.pug', {proyecto: pasa, articulo: pasa_2} );
});


module.exports = router;