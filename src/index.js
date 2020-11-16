const express = require("express");
const app = express();
const routes = require("../routes/routes");

app.set("port", 3000);

app.set(express.json());

app.use(routes);
app.listen(app.get("port"), () => {
  console.log(`servidor corriendo en el puerto ${app.get("port")}`);

  app.use("/api", routes);
});
