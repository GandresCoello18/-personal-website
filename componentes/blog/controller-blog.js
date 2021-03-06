const store = require('./store-blog');

async function listar_blog(articulo){
    return await store.listar(articulo);
}

async function limite_por_pantalla(page){
    return store.limite(page);
}

module.exports = {
    listar_blog,
    limite_por_pantalla
}