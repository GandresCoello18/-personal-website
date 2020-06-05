const express = require("express");
const axios = require("axios");
const moment = require("moment");
const { config } = require("../../config/index");
const ruta_api = require("../../util/util");
const cache = require("../../util/cacheResponse");
const {
  FIVE_MINUTES_IN_SECONDS,
  SIXTY_MINUTES_IN_SECONDS,
} = require("../../util/time");
const router = express.Router();

router.get("/", async function (req, res) {
  cache(res, FIVE_MINUTES_IN_SECONDS);
  const experiencia = await axios.get(`${ruta_api.dominio()}/api/experiencia`, {
    headers: { "access-token": config.token },
  });

  const pasa = experiencia.data;
  require("moment/locale/es");

  for (var i = 0; i < pasa.length; i++) {
    pasa[i].fecha_ex = moment(pasa[i].fecha_ex).format("LL");
  }

  res.render("experiencia.pug", { experiencia: pasa });
});

module.exports = router;
