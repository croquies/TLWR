import {Request as ExpressRequest} from 'express';
import {Body, Controller, Post, Route, Request} from 'tsoa';
import {PostgrestResponse} from '@supabase/postgrest-js';

import {IDynamicEventInputDTO} from '../interfaces/IDynamicEvent';
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
    @Body() body: IDynamicEventInputDTO
  ) {
    this.loggerService.logger.info(JSON.stringify(body));
    body = {
      ...body,
      session_id: req.session.id,
    };
    await this.databaseService.logEvent(body);
    this.setStatus(201);
  }
}
