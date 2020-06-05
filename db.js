var mysql = require("mysql");
const { config } = require("./config/index");

function handleDisconnect() {
  let configuracion = {
    host: config.host,
    port: 3306,
    user: config.user,
    password: config.password,
    database: config.database,
  };

  const connection = mysql.createConnection(configuracion);

  connection.connect(function (err) {
    if (err) {
      console.log("error when connecting to db:", err);
      //setTimeout(handleDisconnect, 2000);
      connection.on("error", function (err) {
        console.log("db error", err);
        if (err.code === "PROTOCOL_CONNECTION_LOST") {
          handleDisconnect();
        } else {
          throw err;
        }
      });
    }
    //handleDisconnect();
    console.log("db conectada");
  });

  return connection;
}

module.exports = handleDisconnect();
