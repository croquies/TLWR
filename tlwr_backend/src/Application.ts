import * as express from 'express';
import {Express} from 'express';
import {Server} from 'http';

import * as helmet from 'helmet';
import * as nocache from 'nocache';
import * as cors from 'cors';
import * as cookieParser from 'cookie-parser';

// Routes
import {EventLog} from './routes/index';
import Config from './Config';

export class Application {
  private static server?: Express;
  private static httpServer?: Server;

  public static async createApplication() {
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

    // Application setup
    Application.httpServer = server.listen(Config.port);
    Application.server = server;
    Application.handleExit(server);
    return Application.server;
  }

  private static handleExit(express: Express) {
    process.on('uncaughtException', (err: Error) => {
      console.error('Uncaught exception', err);
      Application.shutdownProperly(1);
    });
    process.on('unhandledRejection', (reason: {} | null | undefined) => {
      console.error('Unhandled Rejection at promise', reason);
      Application.shutdownProperly(2);
    });
    process.on('SIGINT', () => {
      console.info('Caught SIGINT');
      Application.shutdownProperly(128 + 2);
    });
    process.on('SIGTERM', () => {
      console.info('Caught SIGTERM');
      Application.shutdownProperly(128 + 2);
    });
    process.on('exit', () => {
      console.info('Exiting');
    });
  }

  private static shutdownProperly(exitCode: number) {
    Promise.resolve()
      .then(() => {
        if (Application.httpServer) Application.httpServer.close();
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
