const express = require('express');
const { rutasProtegidas } = require('../../util/jwt');
const response = require('../../router/response');
const controller = require('./controller-portafolio');
const router = express.Router();

router.get('/', rutasProtegidas, function(req, res){
    const { opcion } = req.query || null;

    controller.listar_portafolio(opcion)
        .then( data => {
            response.success(req, res, 200, data);
        }).catch( err => {
            response.error(req, res, err, 500, 'Error en portafolio');
        });
});

module.exports = router;