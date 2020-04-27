const db = require('../../db');

function listar(opcion){
    return new Promise( (resolve, reject) => {
        if(opcion == 'recientes_proyectos'){
            db.query(`SELECT * FROM proyecto ORDER BY id_proyecto DESC LIMIT 3`, (err, data) => {
                db.releaseConnection();
                if(err) return reject(err);
                resolve(data);
            });
        }else if(opcion == 'recientes_articulos'){
            db.query(`SELECT * FROM articulos ORDER BY id_articulo DESC LIMIT 3;`, (err, data) => {
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