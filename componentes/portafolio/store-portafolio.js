const db = require('../../db');

function listar(opcion){
    return new Promise( (resolve, reject) => {
        if(opcion == 'limite'){
            db.query(`SELECT * FROM proyecto ORDER BY id_proyecto DESC limit 4`, (err, data) => {
                db.releaseConnection();
                if(err) return reject(err);
                resolve(data);
            }); 
        }else{
            db.query(`SELECT * FROM proyecto ORDER BY id_proyecto DESC`, (err, data) => {
                db.releaseConnection();
                if(err) return reject(err);
                resolve(data);
            });
        }
    });
}

module.exports = {
    listar
}