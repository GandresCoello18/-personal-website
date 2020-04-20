const express = require('express');
const { rutasProtegidas } = require('../../util/jwt');
const response = require('../../router/response');
const controller = require('./controller-home');
const router = express.Router();


router.get('/', rutasProtegidas, function(req, res){
    const { opcion } = req.query || null;

    controller.listar_home(opcion)
        .then( data => {
            response.success(req, res, 200, data);
        }).catch( err => {
            response.error(req, res, err, 500, 'error en el home');
        });
});

module.exports = router;