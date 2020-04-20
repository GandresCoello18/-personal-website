const express = require('express');
const { rutasProtegidas } = require('../../util/jwt');
const response = require('../../router/response');
const controller = require('./controller-blog');
const router = express.Router();

router.get('/', rutasProtegidas, function(req, res){
    const { articulo } = req.query || null;

    controller.listar_blog(articulo)
        .then( data => {
            response.success(req, res, 200, data);
        }).catch( err => {
            response.error(req, res, err, 500, 'Error en blog');
        });
});


router.get('/limite/', function(req, res){
    const { page } = req.query || 1;
    var limpiar = Number(page);

    controller.limite_por_pantalla(limpiar)
        .then( data => {
            response.success(req, res, 200, data);
        }).catch( err => {
            response.error(req, res, err, 500, 'Error en blog');
        });
})

module.exports = router;