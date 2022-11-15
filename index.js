const express = require("express");
const webpush = require("web-push");
const path = require("path");
const bodyParser = require("body-parser");
const { sequelize } = require("./db/models/index");

const app = express();
const port = 5000;

app.use(express.static(path.join(__dirname, "client")));
app.use(bodyParser.json());

const publicVapidKey =
  "BL8O1HvvrXqa9uwz0lUW0FperUCVisrrGzL-ekRNiKRfxnG3cILwC1wxvVTc7vBz2wfV_kExsPcvjY3g99p3nFo";
const privateVapidKey = "1rWboWOuZN1Q3I_n8BwU8r6Kbdaj-HhByrS7OzIXGeY";
const imgUrl = "https://server-sushi-ua.herokuapp.com/";

webpush.setVapidDetails(
  "mailto:test@test.com",
  publicVapidKey,
  privateVapidKey
);

const showMessage = async (subscription) => {
  const products = await sequelize.models.product.findAll();
  const itemNumber = Math.floor(Math.random() * products.length);
  const { name, cost, img } = products[itemNumber];

  const payload = JSON.stringify({
    title: name,
    body: `Special cost: ${cost}$`,
    img: `${imgUrl}${JSON.parse(img)[0]}.png`,
  });
  webpush
    .sendNotification(subscription, payload)
    .catch((err) => console.error(err));
};

app.post("/subscribe", (req, res) => {
  const subscription = req.body;

  res.status(201).json({});
  setInterval(() => {
    showMessage(subscription);
  }, 10000);
});

app.listen(port, () => {
  console.log(`Server started on port: ${port}`);
});

// ./node_modules/.bin/web-push generate-vapid-keys
