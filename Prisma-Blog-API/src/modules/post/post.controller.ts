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
    const page = Number(req.query.page) || 1;
    const limit = Number(req.query.limit) || 5;
    const search = (req.query.search as string) || "";
    const filter = req.query.isFeatured
      ? req.query.isFeatured === "true"
      : undefined;
    const tags = req.query.tags ? (req.query.tags as string).split(",") : [];
    const sortBy = (req.query.sortBy as string) || "createdAt";
    const sort = (req.query.sort as string) || "desc";
    const post = await postService.getAllPost({
      page,
      limit,
      search,
      filter,
      tags,
      sortBy,
      sort,
    });
    res.status(200).json({
      success: true,
      message: "All post retrieved successfully",
      meta: post.metaData,
      data: post.data,
    });
  } catch (error) {
    console.log(error);
  }
};

const getPostById = async (req: Request, res: Response) => {
  try {
    const id = Number(req.params.id);
    const post = await postService.getPostById(id);
    res.status(200).json({
      success: true,
      message: "Single post retrieved successfully",
      data: post,
    });
  } catch (error) {
    console.log(error);
  }
};

const deletePostById = async (req: Request, res: Response) => {
  try {
    const id = Number(req.params.id);
    const post = await postService.deletePostById(id);
    res.status(200).json({
      success: true,
      message: "Single post delete successfully",
      data: post,
    });
  } catch (error) {
    console.log(error);
  }
};

const updatePostById = async (req: Request, res: Response) => {
  try {
    const id = Number(req.params.id);
    const post = await postService.updatePostById(id, req.body);
    res.status(200).json({
      success: true,
      message: "Single post update successfully",
      data: post,
    });
  } catch (error) {
    console.log(error);
  }
};

export const postController = {
  createPost,
  getAllPost,
  getPostById,
  deletePostById,
  updatePostById,
};
