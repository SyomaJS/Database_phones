const mysql = require("mysql2");

const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "212wly13kz",
  database: "phone",
});

async function createTable(tableName) {
  try {
    pool.query(`CREATE TABLE IF NOT EXISTS ${tableName} (
    id INT NOT NULL AUTO_INCREMENT,
    model VARCHAR(255) NOT NULL,
    serialNum VARCHAR(255) NOT NULL,
);`);
  } catch (error) {
    console.log("Created table " + tableName);
    console.log(error);
  }
}

createTable("phones");
