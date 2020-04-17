const store = require('./store-home');

async function listar_home(opcion){
    return await store.listar(opcion);
}

module.exports = {
    listar_home
}