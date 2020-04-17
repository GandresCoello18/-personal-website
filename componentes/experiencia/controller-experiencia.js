const store = require('./store-experiencia');

async function listar_experiencia(){
    return await store.listar();
}

module.exports = {
    listar_experiencia
}