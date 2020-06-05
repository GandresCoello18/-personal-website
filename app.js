const express = require("express");
const app = express();
const { config } = require("./config/index");
const path = require("path");
const RewriteMiddleware = require("express-htaccess-middleware");
const helmet = require("helmet");
const bodyParse = require("body-parser");
const rutas = require("./router/rutas");
const cors = require("cors");

const RewriteOptions = {
  file: path.resolve(__dirname, ".htaccess"),
  verbose: process.env.ENV_NODE == "development",
  watch: process.env.ENV_NODE == "development",
};

//const corsOptions = { origin: "https://andres-coello-goyes.herokuapp.com" };
// nos permite leer el cuerpo del objeto { name: 'mi-nombre' }
app.use(RewriteMiddleware(RewriteOptions));
app.use(helmet());
//app.use(cors(corsOptions));
app.use(bodyParse.json());

//manejo de los archivos estaticos
app.use(express.static(path.join(__dirname, "public")));

//especifica la ruta donde se encuentra las plantillas
app.set("views", path.join(__dirname, "views"));

// le indicamos cual es la extencion de plantillas utilizamos
app.set("view engine", "pug");

// ruta para vistas frontend
rutas(app);

// redireccionamiento
app.get("*", function (req, res) {
  res.status(404).render("404.pug");
});

// levantamos el servidor
app.listen(config.port, function () {
  console.log("app corriendo");
});
