const db = require('../../db');

function listar(opcion){
    return new Promise( (resolve, reject) => {
        if(opcion == 'Diplomas'){
            db.query(`SELECT * FROM reconocimiento WHERE tipo = 'Diploma' ORDER BY RAND();`, (err, data) => {
                db.releaseConnection();
                if(err) return reject(err);
                resolve(data);
            }); 
        }else if(opcion == 'Certificados'){
            db.query(`SELECT * FROM reconocimiento WHERE tipo = 'Certificado' ORDER BY RAND();`, (err, data) => {
                db.releaseConnection();
                if(err) return reject(err);
                resolve(data);
            });
        }else{
            db.query(`SELECT * FROM reconocimiento;`, (err, data) => {
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