import dotenv = require('dotenv');
import {Service} from 'typedi';

@Service()
export default class ConfigService {
  port: number;
  environment: string;
  session_secret: string;
  log_dir: string;

  tlwr_secret: string;
  tlwr_public: string;
  tlwr_api_url: string;

  constructor() {
    dotenv.config();

    this.port = parseInt(process.env.PORT || '3000');
    this.environment = process.env.NODE_ENV || 'development';
    this.session_secret = process.env.SESSION_SECRET || 'session-secret';
    this.log_dir = process.env.LOG_DIR || 'logs';

    this.tlwr_secret = process.env.TLWR_SECRET || '';
    this.tlwr_public = process.env.TLWR_PUBLIC || '';
    this.tlwr_api_url = process.env.TLWR_API_URL || '';

    if (this.isNotProduction) {
      console.log(this.port);
      console.log(this.environment);
      console.log(this.session_secret);
      console.log(this.log_dir);
      console.log(this.tlwr_secret);
      console.log(this.tlwr_public);
      console.log(this.tlwr_api_url);
    }
  }

  public get isProduction(): boolean {
    return this.environment === 'production';
  }
  public get isNotProduction(): boolean {
    return !this.isProduction;
  }
}
