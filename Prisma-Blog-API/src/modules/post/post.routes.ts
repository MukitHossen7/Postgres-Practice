import express from "express";
import { postController } from "./post.controller";

const postRoute = express.Router();

postRoute.post("/", postController.createPost);
postRoute.get("/", postController.getAllPost);
postRoute.get("/:id", postController.getPostById);
postRoute.delete("/:id", postController.deletePostById);
postRoute.patch("/:id", postController.updatePostById);

export default postRoute;
