import {Service} from 'typedi';
import winston = require('winston');
// import winstonDaily = require('winston-daily-rotate-file');

import ConfigService from './ConfigService';
const {combine, timestamp, printf} = winston.format;
@Service()
export default class LoggerService {
  public logger: winston.Logger;

  constructor(config: ConfigService) {
    this.logger = winston.createLogger({
      format: combine(
        timestamp({
          format: 'YYYY-MM-DD HH:mm:ss',
        }),
        printf(info => {
          return `${info.timestamp} [${info.level}]: ${info.message}`;
        })
      ),
      transports: [
        new winston.transports.Console(),
        // new winstonDaily({
        //   level: 'info',
        //   datePattern: 'YYYY-MM-DD',
        //   dirname: config.log_dir,
        //   filename: '%DATE%.log',
        //   maxFiles: 30,
        //   zippedArchive: true,
        // }),
        // new winstonDaily({
        //   level: 'error',
        //   datePattern: 'YYYY-MM-DD',
        //   dirname: config.log_dir + '/error',
        //   filename: '%DATE%.error.log',
        //   maxFiles: 30,
        //   zippedArchive: true,
        // }),
      ],
    });
    if (config.isNotProduction) {
      this.logger.add(
        new winston.transports.Console({
          format: winston.format.combine(
            winston.format.colorize(),
            winston.format.simple()
          ),
        })
      );
    }
  }
}
