import * as express from 'express';
import swaggerUi = require('swagger-ui-express');
import {Express} from 'express';
import {Server} from 'http';

import * as helmet from 'helmet';
import * as nocache from 'nocache';
import * as cors from 'cors';
import * as cookieParser from 'cookie-parser';
import {v4 as uuidv4} from 'uuid';

// Routes
import {RegisterRoutes} from './routes';
import ConfigService from './services/ConfigService';
import {Service} from 'typedi';
import session = require('express-session');
import LoggerService from './services/LoggerService';

@Service()
export class Application {
  private server?: Express;
  private httpServer?: Server;

  constructor(
    private config: ConfigService,
    private loggerService: LoggerService
  ) {}

  public async createApplication() {
    const server = express();

    // Use standard middleware
    server.use(express.json());
    server.use(cookieParser());
    server.use(cors());

    server.use(
      session({
        secret: this.config.session_secret,
        resave: false,
        saveUninitialized: true,
        genid: function () {
          return uuidv4(); // use UUIDs for session IDs
        },
        cookie: {secure: this.config.isProduction, maxAge: 360000},
      })
    );
    // production cookie setting
    // http://expressjs.com/en/resources/middleware/session.html
    if (this.config.isProduction) {
      server.set('trust proxy', 1);
    }

    // Use security middleware
    server.use(nocache());
    server.use(helmet());
    server.use(helmet.referrerPolicy({policy: 'same-origin'}));

    // Register routers
    RegisterRoutes(server);

    let docsUrl = '/docs';
    if (this.config.isProduction) {
      docsUrl = '/tlwrdocsdessss';
    }
    server.use(
      docsUrl,
      swaggerUi.serve,
      async (req: express.Request, res: express.Response) => {
        return res.send(
          swaggerUi.generateHTML(await import('../build/swagger.json'))
        );
      }
    );

    // this setup
    this.httpServer = server.listen(this.config.port);
    this.server = server;
    this.handleExit();
    return this.server;
  }

  private handleExit() {
    process.on('uncaughtException', (err: Error) => {
      this.loggerService.logger.error(`Uncaught exception ${err}`);
      this.shutdownProperly(1);
    });
    process.on('unhandledRejection', (reason: {} | null | undefined) => {
      this.loggerService.logger.error(
        `Unhandled Rejection at promise ${reason}`
      );
      this.shutdownProperly(2);
    });
    process.on('SIGINT', () => {
      this.loggerService.logger.info('Caught SIGINT');
      this.shutdownProperly(128 + 2);
    });
    process.on('SIGTERM', () => {
      this.loggerService.logger.info('Caught SIGTERM');
      this.shutdownProperly(128 + 2);
    });
    process.on('exit', () => {
      this.loggerService.logger.info('Exiting');
    });
  }

  private shutdownProperly(exitCode: number) {
    Promise.resolve()
      .then(() => {
        if (this.httpServer) this.httpServer.close();
      })
      .then(() => {
        this.loggerService.logger.info('Shutdown complete');
        process.exitCode = exitCode;
      })
      .catch(err => {
        this.loggerService.logger.error(`Error during shutdown ${err}`);
        process.exitCode = 1;
      });
  }
}
