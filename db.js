var mysql = require("mysql");
const { config } = require("./config/index");

function connectar() {
  var connection = mysql.createPool({
    host: config.host,
    port: 3306,
    user: config.user,
    password: config.password,
    database: config.database,
  });

  connection.connect((err) => {
    if (err) {
      console.error(new Error(err));
      //setTimeout(connectar(), 2000);
    } else {
      console.log("conectado con exito");
    }
  });

  connection.on("err", (err) => {
    if (err.code === "PROTOCOL_CONNECTION_LOST") {
      console.log("conetado db");
      setTimeout(connectar(), 2000);
    } else {
      throw err;
    }
  });

  return connection;
}

module.exports = connectar();
