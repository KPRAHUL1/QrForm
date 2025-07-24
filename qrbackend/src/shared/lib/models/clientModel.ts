export type ClientModel = {
  id: string;
  name: string;
  companyName: string;
  description?: string;
  serviceIds: string[]; 
  imagePath?: string;
  industry?: string;
  createdAt?: Date;
  updatedAt?: Date;
  deletedAt?: Date;
};

export type CreateClientModel = Omit<
  ClientModel,
  "id" | "createdAt" | "updatedAt" | "deletedAt"
>;

export type UpdateClientModel = Omit<
  ClientModel,
   "createdAt" | "updatedAt" | "deletedAt"
>;
