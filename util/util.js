var axios = require('axios');

function dominio(){
    return "https://andres-coello-goyes.herokuapp.com";
}

function dominio_developer(){
    return "http://127.0.0.1:3000";
}

async function info_articulo(articulo){
    return await axios.get(`${dominio()}/api/blog?articulo=${articulo}`);
}


module.exports = {
    dominio,
    dominio_developer,
    info_articulo
}