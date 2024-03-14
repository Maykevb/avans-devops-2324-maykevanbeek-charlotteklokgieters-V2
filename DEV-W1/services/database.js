const { MongoClient } = require("mongodb");
const client = new MongoClient(process.env.MONGO_URL || "mongodb://localhost:27017");
const db = client.db(process.env.DB_NAME || "devops_week1");

module.exports = {
    db: db,
    client: client,
};