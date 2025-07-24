import express, { Express, Request, Response } from "express";
import dotenv from "dotenv";

dotenv.config();

const app: Express = express();
const host = process.env.APP_HOST || 'localhost';
const port = process.env.APP_PORT || 7700;

app.use(express.json());
app.use(express.urlencoded());

//Express configuration.
app.set("host", host);
app.set("port", port);

//Using custom cors policy
app.use((req, res, next) => {
  res.append('Access-Control-Allow-Origin', '*');
  res.append('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE');
  res.append('Access-Control-Allow-Headers', '*');
  next();
});


app.get("/", (req: Request, res: Response) => {
  res.send("Express + TypeScript Server");
});

const qrScannerApi = require('./modules/qrscanner/registration.route');

app.use('/api/qrscanner', qrScannerApi);



app.use("/uploads", express.static(__dirname + "/uploads"));

app.listen(app.get("port"), () => {
  console.log(
    "Server started at %s : %d ",
    app.get("host"),
    app.get("port"),
  );
});

module.exports = app;
 