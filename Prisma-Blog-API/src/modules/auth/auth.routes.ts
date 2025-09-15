import express from "express";
import { authController } from "./auth.controller";

const authRoute = express.Router();

authRoute.post("/login", authController.createLogin);

export default authRoute;
