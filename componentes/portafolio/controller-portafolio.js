const store = require('./store-portafolio');

async function listar_portafolio(opcion){
    return await store.listar(opcion);
}

module.exports = {
    listar_portafolio
}