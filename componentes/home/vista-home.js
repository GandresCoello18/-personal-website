const express = require('express');
const axios = require('axios');
const router = express.Router();

router.get('/', async function(req, res){
    const proyecto = await axios.get('http://127.0.0.1:5000/api?opcion=recientes_proyectos');
    const articulos = await axios.get('http://127.0.0.1:5000/api?opcion=recientes_articulos');
    
    const pasa = proyecto.data;
    const pasa_2 = articulos.data
   res.render('index.pug', {proyecto: pasa, articulo: pasa_2} );
});


module.exports = router;