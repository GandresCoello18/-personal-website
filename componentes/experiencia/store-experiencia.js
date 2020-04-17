const db = require('../../db');

function listar(){
    return new Promise( (resolve, reject) => {
        db.query(`SELECT * FROM experiencia ORDER BY id_experiencia DESC`, (err, data) => {
            if(err) return reject(err);
            resolve(data);
        });
    });
}

module.exports = {
    listar
}