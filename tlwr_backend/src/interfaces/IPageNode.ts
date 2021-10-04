export interface IPageNode {
  id: number;
  project_id: number;
  path: string;
  class_name: string;
  additional_info: object;
  created_at: string;
}

export interface IPageNodeInputDTO {
  project_id: number;
  path: string;
  class_name: string;
  additional_info: object;
}
