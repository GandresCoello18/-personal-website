var mysql = require('mysql');
const { config } = require('./config/index');

  var connection = mysql.createPool({
    host: config.host,
    user: config.user,
    password: config.password,
    database: config.database,
  });

  connection.on('err', err => {
    if(err) console.log(err);
    console.log('conectado con exito');
  });
  
  console.log('conectado con exito');

module.exports = connection;