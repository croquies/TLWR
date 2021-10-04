import 'reflect-metadata';

import {Container} from 'typedi';

import {Application} from './Application';
import LoggerService from './services/LoggerService';

async function startApp() {
  const loggerService = Container.get(LoggerService);
  const application = Container.get(Application);
  await application.createApplication().then(() => {
    loggerService.logger.info('The application was started!');
  });
}

startApp();
