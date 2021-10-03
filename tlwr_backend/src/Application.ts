import * as express from 'express';
import {Express} from 'express';
import {Server} from 'http';

import * as helmet from 'helmet';
import * as nocache from 'nocache';
import * as cors from 'cors';
import * as cookieParser from 'cookie-parser';

// Routes
import {EventLog} from './routes/index';
import ConfigService from './services/ConfigService';
import {Service} from 'typedi';

@Service()
export class Application {
  private server?: Express;
  private httpServer?: Server;

  constructor(private config: ConfigService) {}

  public async createApplication() {
    const server = express();

    // Use standard middleware
    server.use(express.json());
    server.use(cookieParser());
    server.use(cors());

    // Use security middleware
    server.use(nocache());
    server.use(helmet());
    server.use(helmet.referrerPolicy({policy: 'same-origin'}));

    // Register routers
    server.use('/eventlog', EventLog);

    // this setup
    this.httpServer = server.listen(this.config.port);
    this.server = server;
    this.handleExit(server);
    return this.server;
  }

  private handleExit(express: Express) {
    process.on('uncaughtException', (err: Error) => {
      console.error('Uncaught exception', err);
      this.shutdownProperly(1);
    });
    process.on('unhandledRejection', (reason: {} | null | undefined) => {
      console.error('Unhandled Rejection at promise', reason);
      this.shutdownProperly(2);
    });
    process.on('SIGINT', () => {
      console.info('Caught SIGINT');
      this.shutdownProperly(128 + 2);
    });
    process.on('SIGTERM', () => {
      console.info('Caught SIGTERM');
      this.shutdownProperly(128 + 2);
    });
    process.on('exit', () => {
      console.info('Exiting');
    });
  }

  private shutdownProperly(exitCode: number) {
    Promise.resolve()
      .then(() => {
        if (this.httpServer) this.httpServer.close();
      })
      .then(() => {
        console.info('Shutdown complete');
        process.exit(exitCode);
      })
      .catch(err => {
        console.error('Error during shutdown', err);
        process.exit(1);
      });
  }
}
