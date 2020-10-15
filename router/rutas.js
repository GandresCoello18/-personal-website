////////////  API REST CON MYSQL
const home_api = require('../componentes/home/network-home');
const portafolio_api = require('../componentes/portafolio/network-portafolio');
const contacto_api = require('../componentes/contacto/network-contacto');
const sobre_mi_api = require('../componentes/sobre-mi/network-sobre-mi');
const blog_api = require('../componentes/blog/network-blog');
const experiencia_api = require('../componentes/experiencia/network-experiencia');

////////////  RETORNO DE VISTAS
const portafolio_vista = require('../componentes/portafolio/vista-portafolio');
const sobre_mi_vista = require('../componentes/sobre-mi/vista-sobre-mi');
const home_vista = require('../componentes/home/vista-home');
const blog_vista = require('../componentes/blog/vista-blog');
const experiencia_vista = require('../componentes/experiencia/vista-experiencia');
const contacto_vista = require('../componentes/contacto/vista-contacto');
const galeria = require('../componentes/galeria/vista-galeria');


const rutas = function (server){
    server.use('/api', home_api);
    server.use('/api/portafolio', portafolio_api);
    server.use('/api/contacto', contacto_api);
    server.use('/api/sobre-mi', sobre_mi_api);
    server.use('/api/blog', blog_api);
    server.use('/api/experiencia', experiencia_api);

    server.use('/', home_vista);
    server.use('/portafolio', portafolio_vista);
    server.use('/contacto', contacto_vista);
    server.use('/sobre-mi', sobre_mi_vista);
    server.use('/blog', blog_vista);
    server.use('/experiencia', experiencia_vista);
    server.use('/galeria', galeria);
}

module.exports = rutas ;