import { Request, Response } from "express";
import { postService } from "./post.service";

const createPost = async (req: Request, res: Response) => {
  try {
    const post = await postService.createPost(req.body);
    res.status(201).json({
      success: true,
      message: "Post created successfully",
      data: post,
    });
  } catch (error) {
    console.log(error);
  }
};

const getAllPost = async (req: Request, res: Response) => {
  try {
    const post = await postService.getAllPost();
    res.status(201).json({
      success: true,
      message: "All post retrieved successfully",
      data: post,
    });
  } catch (error) {
    console.log(error);
  }
};

export const postController = {
  createPost,
  getAllPost,
};
