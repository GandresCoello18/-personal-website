var mysql = require('mysql');
const { config } = require('./config/index');

  var connection = mysql.createConnection({
    host: config.host,
    user: config.user,
    password: config.password,
    database: config.database,
  });

  connection.connect( (err) => {
    if(err){
      console.error(new Error(err));
      setTimeout(conexion, 2000);
    }else{
      console.log('conectado con exito');
    }
  });

  connection.on('err', err => {
    if(err) console.log(err);
  })

  


module.exports = connection;