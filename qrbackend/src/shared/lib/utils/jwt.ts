import jwt from 'jsonwebtoken';
import dotenv from "dotenv";
import { sendErrorObj } from './errorObject';
import { Response } from 'express';
import { token_err } from './customErrorCode';
import { JwtPayload } from '../models/jwtModel';

dotenv.config();

export const generateJwtToken = (payload: JwtPayload): string => {

    const secretKey = process.env.JWT_SECRET_KEY || "Rexcoders_2022_by_rexKnar@2018"
    const options = {
        expiresIn: '10h', 
    };

    return jwt.sign(payload, secretKey, options);
};

export const authenticateToken = (req: any, res: Response, next: any) => {
    const authHeader = req.headers.authorization?req.headers.authorization:  req.query.token;
    if (!authHeader) {
        sendErrorObj(res, token_err, "Token Not Found!");
    } else {
        const token = authHeader && authHeader.split(" ")[1];
        if (token == null) {
            sendErrorObj(res, token_err, "Token Not Found!");
        } else {
            jwt.verify(token, process.env.JWT_SECRET_KEY||"Rexcoders_2022_by_rexKnar@2018", (err:any, user: any) => {
                if (err) {
                    sendErrorObj(res, token_err, err);
                }
                req.user = user;
                if(Date.now() >= user.exp * 1000)
                {
                    sendErrorObj(res, 'TOKEN_EXP', "Token Expired!");
                }
                else{
                    next();
                }   
            });
        }
    }
}

