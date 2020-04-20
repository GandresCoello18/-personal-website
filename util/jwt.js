const express = require('express');
const jwt = require('jsonwebtoken');
const { config } = require('../config/index');
const rutasProtegidas = express.Router(); 



rutasProtegidas.use((req, res, next) => {
    const token = req.headers['access-token'];
    console.log(token);
	
    if (token) {
        jwt.verify(token, config.secreto, (err, decoded) => {      
            if (err) {
                res.render('500.pug');
                return { mensaje: 'Token inválida' };  
            } else {
                req.decoded = decoded;
                next();
            }
        });
    } else {
        res.render('500.pug');
        return { mensaje: 'Token no proveída.' };
    }
 });

 module.exports = {
     rutasProtegidas
 }