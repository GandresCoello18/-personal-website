const express = require('express');
const response = require('../../router/response');
const controller = require('./controller-contacto');
const router = express.Router();

router.get('/', function(req, res){
    response.success(req, res, 'contacto.pug', 200);
});

module.exports = router;