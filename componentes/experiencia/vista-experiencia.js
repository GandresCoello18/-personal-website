const express = require('express');
const axios = require('axios');
const router = express.Router();

router.get('/', async function(req, res){
    const experiencia = await axios.get('http://127.0.0.1:5000/api/experiencia');
    
    const pasa = experiencia.data
   res.render('experiencia.pug', {experiencia: pasa} );
});


module.exports = router;