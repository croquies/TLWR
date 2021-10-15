export interface IPageNodeAdditionalInfo {
  [key: string]: any;
}

export interface IPageNode {
  id: string;
  project_id: string;
  path: string;
  class_name?: string;
  additional_info?: IPageNodeAdditionalInfo;
  created_at: string;
}

export interface IPageNodeRequest {
  path: string;
  class_name?: string;
  additional_info?: IPageNodeAdditionalInfo;
}

export interface IPageNodeInDB {
  id?: string;
  project_id: string;
  path: string;
  class_name?: string;
  additional_info?: IPageNodeAdditionalInfo;
}
