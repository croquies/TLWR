import dotenv = require('dotenv');

dotenv.config();

export default {
  port: process.env.PORT || 3000,
};
