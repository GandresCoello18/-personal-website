const express = require('express');
const response = require('../../router/response');
const controller = require('./controller-experiencia');
const router = express.Router();

router.get('/', function(req, res){
    controller.listar_experiencia()
        .then( data => {
            response.success(req, res, 200, data);
        }).catch( err => {
            response.error(req, res, err, 200, 'Error en experiencia');
        })
});

module.exports = router;