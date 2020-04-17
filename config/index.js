require('dotenv').config();

const config = {
  dev: process.env.NODE_ENV !== 'production',
  port: process.env.PORT || 5000,
  host: process.env.Host,
  user: process.env.User,
  password: process.env.Password,
  database: process.env.Database
};

module.exports = { config };