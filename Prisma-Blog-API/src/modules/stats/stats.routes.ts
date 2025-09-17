import express from "express";
import { statsController } from "./stats.controller";

const statsRoute = express.Router();

statsRoute.get("/blog", statsController.getBlogStat);

export default statsRoute;
