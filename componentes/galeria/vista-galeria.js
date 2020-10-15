const express = require("express");
const cache = require("../../util/cacheResponse");
const {
  FIVE_MINUTES_IN_SECONDS,
} = require("../../util/time");
const router = express.Router();

router.get("/", async function (req, res) {
  cache(res, FIVE_MINUTES_IN_SECONDS);


  res.render("galeria.pug");
});

module.exports = router;
