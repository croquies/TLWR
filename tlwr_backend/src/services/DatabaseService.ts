import {Service} from 'typedi';
import {IDynamicEventInputDTO} from '../interfaces/IDynamicEvent';
import LoggerService from './LoggerService';
import SupabaseService from './SupabaseService';

@Service()
export default class DatabaseService {
  private dynamicEvent = 'DynamicEvent';

  constructor(
    private supabaseService: SupabaseService,
    private loggerService: LoggerService
  ) {}

  public async logEvent(event: IDynamicEventInputDTO) {
    this.loggerService.logger.info(`logEvent: ${JSON.stringify(event)}`);
    return await this.supabaseService.supabase
      .from<IDynamicEventInputDTO>(this.dynamicEvent)
      .insert(event);
  }
}
