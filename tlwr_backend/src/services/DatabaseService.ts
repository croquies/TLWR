import {Service} from 'typedi';
import {IDynamicEventInputDTO} from '../interfaces/IDynamicEvent';
import LoggerService from './LoggerService';
import SupabaseService from './SupabaseService';

@Service()
export default class DatabaseService {
  private dynamicEvents = 'dynamic_events';
  private pageNodes = 'page_nodes';
  private profiles = 'profiles';
  private projects = 'projects';
  private users = 'users';

  constructor(
    private supabaseService: SupabaseService,
    private loggerService: LoggerService
  ) {}

  public async logEvent(event: IDynamicEventInputDTO) {
    this.loggerService.logger.info(`logEvent: ${JSON.stringify(event)}`);
    return await this.supabaseService.supabase
      .from<IDynamicEventInputDTO>(this.dynamicEvents)
      .insert(event);
  }
}
