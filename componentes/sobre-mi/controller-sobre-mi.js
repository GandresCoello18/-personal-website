const store = require('./store-sobre-mi');

async function listar_sobre_mi(opcion){
    return await store.listar(opcion);
}

module.exports = {
    listar_sobre_mi
}