import express from "express";
import { postController } from "./post.controller";

const postRoute = express.Router();

postRoute.post("/", postController.createPost);

export default postRoute;
