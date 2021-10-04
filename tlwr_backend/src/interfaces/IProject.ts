export interface IProject {
  id: number;
  name: string;
  owner: string;
  created_at: string;
}

export interface IProjectInputDTO {
  name: string;
  owner: string;
}
