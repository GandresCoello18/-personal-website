const express = require('express');
const axios = require('axios');
const router = express.Router();

router.get('/', async function(req, res){
    const { page } = req.query || 1;

    const articulos = await axios.get('http://127.0.0.1:5000/api/blog');
    const limite_por_pagina = await axios.get(`http://127.0.0.1:5000/api/blog/limite?page=${page}`);
    
    const pasa = limite_por_pagina.data;
    const pasa_2 = articulos.data;

   res.render('blog.pug', {articulos: pasa_2, limite: pasa} );
});


module.exports = router;