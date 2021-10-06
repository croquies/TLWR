import {IPageNodeRequest} from './IPageNode';

export interface IDynamicEvent {
  id: string;
  project_id: string;
  session_id: string;
  from?: string;
  to: string;
  created_at: string;
}

export interface IDynamicEventRequest {
  project_id: string;
  from?: IPageNodeRequest;
  to: IPageNodeRequest;
}

export interface IDynamicEventInDB {
  project_id: string;
  session_id?: string;
  from?: string;
  to?: string;
}
