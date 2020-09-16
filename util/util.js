var axios = require("axios");
const { config } = require("../config/index");

function dominio() {
  // return "http://127.0.0.1:3000";
  return "http://andres-coello-goyes.com";
}

function dominio_developer() {
  return "http://127.0.0.1:3000";
}

async function info_articulo(articulo) {
  return await axios.get(`${dominio()}/api/blog?articulo=${articulo}`, {
    headers: { "access-token": config.token },
  });
}

module.exports = {
  dominio,
  dominio_developer,
  info_articulo,
};
