import 'reflect-metadata';

import {Container} from 'typedi';

import {Application} from './Application';

async function startApp(application: Application) {
  await application.createApplication().then(() => {
    console.info('The application was started!');
  });
}

startApp(Container.get(Application));
