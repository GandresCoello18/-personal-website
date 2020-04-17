const express = require('express');
const app = express();
const path = require('path');
const helmet = require('helmet');
const bodyParse = require('body-parser');
const rutas = require('./router/rutas');
const cors = require('cors');


const corsOptions = { origin: "http://example.com" };
// nos permite leer el cuerpo del objeto { name: 'mi-nombre' }
app.use(helmet());
app.use(cors(corsOptions));
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


// levantamos el servidor
app.listen(5000, function(){
    console.log('puerto 5000 levantado');
})