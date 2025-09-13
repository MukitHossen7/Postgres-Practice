import express from "express";
import { postController } from "./post.controller";

const postRoute = express.Router();

postRoute.post("/", postController.createPost);
postRoute.get("/", postController.getAllPost);

export default postRoute;
