import {Request as ExpressRequest} from 'express';
import {Body, Controller, Post, Route, Request} from 'tsoa';

import {
  IDynamicEventInDB,
  IDynamicEventRequest,
} from '../interfaces/IDynamicEvent';
import DatabaseService from '../services/DatabaseService';
import LoggerService from '../services/LoggerService';
import {Service} from 'typedi';

@Service()
@Route('dynamicevents')
export class DynamicEventController extends Controller {
  constructor(
    private databaseService: DatabaseService,
    private loggerService: LoggerService
  ) {
    super();
  }

  @Post()
  public async logEvent(
    @Request() req: ExpressRequest,
    @Body() body: IDynamicEventRequest
  ) {
    this.loggerService.logger.info(JSON.stringify(body));
    const event: IDynamicEventInDB = {
      project_id: body.project_id,
      session_id: req.session.id,
    };
    if (body.from) {
      const pageNode = await this.databaseService.createPageNode({
        ...body.from,
        project_id: body.project_id,
      });
      if (pageNode != null) {
        event.from = pageNode.id;
      }
    }
    if (body.to) {
      const pageNode = await this.databaseService.createPageNode({
        ...body.to,
        project_id: body.project_id,
      });
      if (pageNode != null) {
        event.to = pageNode.id;
      }
    }
    await this.databaseService.createDynamicEvent(event);
    this.setStatus(201);
  }
}
