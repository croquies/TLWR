import {Router} from 'express';
import Container from 'typedi';
import {IDynamicEventInputDTO} from '../interfaces/IDynamicEvent';
import DatabaseService from '../services/DatabaseService';
import LoggerService from '../services/LoggerService';

const router = Router();

router.post('/', async (req, res) => {
  const databaseService = Container.get(DatabaseService);
  const loggerService = Container.get(LoggerService);

  loggerService.logger.info(JSON.stringify(req.body));
  const body: IDynamicEventInputDTO = {
    sessionId: req.session.id,
    ...req.body,
  };
  const logged = await databaseService.logEvent(body);
  res.send(logged);
});

export default router;
