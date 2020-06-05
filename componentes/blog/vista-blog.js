const express = require("express");
const axios = require("axios");
const { config } = require("../../config/index");
const {
  dominio,
  dominio_developer,
  info_articulo,
} = require("../../util/util");
const router = express.Router();

router.get("/", async function (req, res) {
  const { page } = req.query || 1;

  const articulos = await axios.get(`${dominio()}/api/blog`, {
    headers: { "access-token": config.token },
  });
  const limite_por_pagina = await axios.get(
    `${dominio()}/api/blog/limite?page=${page}`,
    {
      headers: { "access-token": config.token },
    }
  );

  const pasa = limite_por_pagina.data;
  const pasa_2 = articulos.data;

  res.render("blog.pug", { articulos: pasa_2, limite: pasa });
});

router.get("/mysql", (req, res) => llamar_datos_por_ruta("mysql", res));
router.get("/mis-habilidades", (req, res) =>
  llamar_datos_por_ruta("mis-habilidades", res)
);
router.get("/http-y-https", (req, res) =>
  llamar_datos_por_ruta("http-y-https", res)
);
router.get("/bits-bytes", (req, res) =>
  llamar_datos_por_ruta("bits-bytes", res)
);
router.get("/metodos-de-hacker", (req, res) =>
  llamar_datos_por_ruta("metodos-de-hacker", res)
);
router.get("/ventajas-de-php", (req, res) =>
  llamar_datos_por_ruta("ventajas-de-php", res)
);
router.get("/ventajas-de-linux", (req, res) =>
  llamar_datos_por_ruta("ventajas-de-linux", res)
);
router.get("/el-internet", (req, res) =>
  llamar_datos_por_ruta("el-internet", res)
);
router.get("/sitios-we", (req, res) => llamar_datos_por_ruta("sitios-we", res));
router.get("/proteccion-hacker", (req, res) =>
  llamar_datos_por_ruta("proteccion-hacker", res)
);
router.get("/primer-lenguaje", (req, res) =>
  llamar_datos_por_ruta("primer-lenguaje", res)
);
router.get("/sass-preprocesador", (req, res) =>
  llamar_datos_por_ruta("sass-preprocesador", res)
);
router.get("/responsive-desing", (req, res) =>
  llamar_datos_por_ruta("responsive-desing", res)
);
router.get("/la-nube", (req, res) => llamar_datos_por_ruta("la-nube", res));

function llamar_datos_por_ruta(ruta, res) {
  info_articulo(ruta, res)
    .then((respuesta) => {
      let pasa = respuesta.data;

      res.render(`blog/${ruta}.pug`, { info_del_articulo: pasa, ruta });
    })
    .catch((err) => {
      console.log(err);
      res.render(`500.pug`);
    });
}

module.exports = router;
