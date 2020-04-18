const db = require('../../db');

function listar(articulo){
    return new Promise( (resolve, reject) => {
        if(articulo == 'derecha'){
            db.query(`SELECT * FROM articulos ORDER BY RAND() LIMIT 4;`, (err, data) => {
                if(err) return reject(err);
                resolve(data);
            });
        }else if(articulo){
            db.query(`SELECT titulo_arti, imagen_arti FROM articulos WHERE enlace_arti = '${articulo}';`, (err, data) => {
                if(err) return reject(err);
                resolve(data);
            });
        }else{
            db.query(`SELECT * FROM articulos ORDER BY id_articulo DESC`, (err, data) => {
                if(err) return reject(err);
                resolve(data);
            });
        }
    });
}

function limite(page){
    return new Promise( (resolve, reject) => {
        var hasta = 0;
        if(page == 1){
            desde = 4;
            hasta = 0;
        }else{
            desde = 4;
            //hasta = page * 4;
            for(i=1; i<page; i++){
                hasta = hasta + 4;
            }
        }

        db.query(`SELECT * FROM articulos ORDER BY id_articulo DESC LIMIT ${hasta}, ${desde}`, (err, data) => {
            if(err) return reject(err);
            resolve(data);
        });
    });
}

module.exports = {
    listar,
    limite
}