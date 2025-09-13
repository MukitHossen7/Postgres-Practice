import { Post, Prisma } from "@prisma/client";
import { prisma } from "../../config/db";

const createPost = async (payload: Prisma.PostCreateInput): Promise<Post> => {
  const post = await prisma.post.create({
    data: payload,
    include: {
      author: {
        select: {
          id: true,
          name: true,
          email: true,
        },
      },
    },
  });
  return post;
};

const getAllPost = async () => {
  const post = await prisma.post.findMany();
  return post;
};

export const postService = {
  createPost,
  getAllPost,
};
