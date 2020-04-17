const db = require('../../db');

function listar(){
    return new Promise( (resolve, reject) => {
        db.query(`SELECT * FROM articulos ORDER BY id_articulo DESC`, (err, data) => {
            if(err) return reject(err);
            resolve(data);
        });
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