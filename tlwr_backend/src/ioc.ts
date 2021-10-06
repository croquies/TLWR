// src/ioc.ts
import {IocContainer} from '@tsoa/runtime';
import {Container} from 'typedi';

// Assign a container to `iocContainer`.
const iocContainer: IocContainer = {
  get: <T>(controller: {prototype: T}): T => {
    return Container.get<T>(controller as never);
  },
};

// export according to convention
export {iocContainer};
