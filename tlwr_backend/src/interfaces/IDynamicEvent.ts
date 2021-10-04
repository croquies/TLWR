import {IPageNode} from './IPageNode';

export interface IDynamicEvent {
  id: string;
  project_id: number;
  session_id: string;
  from: number;
  to: number;
  created_at: string;
}

export interface IDynamicEventInputDTO {
  project_id: number;
  session_id: string;
  from: IPageNode;
  to: IPageNode;
}
