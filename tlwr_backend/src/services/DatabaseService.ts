import {Service} from 'typedi';
import {IDynamicEventInDB} from '../interfaces/IDynamicEvent';
import {IPageNode, IPageNodeInDB} from '../interfaces/IPageNode';
import LoggerService from './LoggerService';
import SupabaseService from './SupabaseService';

@Service()
export default class DatabaseService {
  private dynamicEvents = 'dynamic_events';
  private pageNodes = 'page_nodes';
  // private profiles = 'profiles';
  // private projects = 'projects';
  // private users = 'users';

  constructor(
    private supabaseService: SupabaseService,
    private loggerService: LoggerService
  ) {}

  public async createDynamicEvent(event: IDynamicEventInDB) {
    this.loggerService.logger.info(
      `createDynamicEvent: ${JSON.stringify(event)}`
    );
    return await this.supabaseService.supabase
      .from<IDynamicEventInDB>(this.dynamicEvents)
      .insert(event);
  }

  public async createPageNode(pageNode: IPageNodeInDB) {
    this.loggerService.logger.info(
      `createPageNode: ${JSON.stringify(pageNode)}`
    );
    if (pageNode.path && pageNode.class_name) {
      const filtered = (
        await this.supabaseService.supabase
          .from<IPageNode>(this.pageNodes)
          .select()
          .eq('project_id', pageNode.project_id)
          .eq('path', pageNode.path)
          .eq('class_name', pageNode.class_name)
          .single()
      ).data;

      if (filtered) {
        return filtered;
      }

      return (
        await this.supabaseService.supabase
          .from<IPageNodeInDB>(this.pageNodes)
          .insert(pageNode)
          .single()
      ).data;
    }
    throw 'path와 class_name은 필수 요소입니다.';
  }
}
