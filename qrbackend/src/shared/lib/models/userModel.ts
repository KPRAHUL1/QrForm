export type UserModel = {
    id: string;
    name?: string;
    email: string;
    image?: string;
    password: string;
    username: string;
    emailVerified?: Date;
    phoneNumber: string;
    gender: string;
    signUpType?: string;
    isActive: boolean;
    role: string;
    createdAt: Date;
    deletedAt: Date;
  };

  export type CreateUserModel = Pick<UserModel, 
  | 'name'
  | 'email'
  | 'username'
  | 'password'
  | 'phoneNumber'
  | 'gender'
  | 'role'
  | 'isActive'
  | 'image'
  | 'signUpType' >