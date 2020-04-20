const express = require('express');
const response = require('../../router/response');
const { rutasProtegidas } = require('../../util/jwt');
const controller = require('./controller-sobre-mi');
const router = express.Router();

router.get('/', rutasProtegidas, function(req, res){
    const { opcion } = req.query || null;

    controller.listar_sobre_mi(opcion)
        .then( data => {
            response.success(req, res, 200, data);
        }).catch( err => {
            response.error(req, res, 500, err);
        });
});

module.exports = router;