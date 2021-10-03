import dotenv = require('dotenv');
import {Service} from 'typedi';

@Service()
export default class ConfigService {
  port: number;
  tlwr_secret: string;
  tlwr_public: string;
  tlwr_api_url: string;

  constructor() {
    dotenv.config();

    this.port = parseInt(process.env.PORT || '3000');
    this.tlwr_secret = process.env.TLWR_SECRET || '';
    this.tlwr_public = process.env.TLWR_PUBLIC || '';
    this.tlwr_api_url = process.env.TLWR_API_URL || '';
  }
}
