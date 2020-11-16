const mysql = require("mysql");

const mysqlConnection = mysql.createConnection({
  host: " bcr2fjnyv1afstflgux7-mysql.services.clever-cloud.com:",
  user: "uevtmusydgcnqcjs",
  password: "3OBtAVUGLXkktmhQnwtf",
  database: "bcr2fjnyv1afstflgux7",
  multipleStatements :true

});

mysqlConnection.connect(function (err) {
  if (err) {
    console.error(err);
    return;
  } else {
    console.log("base de datos conectada");
  }
});

