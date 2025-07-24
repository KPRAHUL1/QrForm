import { Response } from 'express';

export const sendErrorObj = (res:Response, code: string, message: string) => {
    res.status(500).json({ errorCode: code, errorMessage: message});
}
