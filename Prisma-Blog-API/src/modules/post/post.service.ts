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

const getAllPost = async ({
  page,
  limit,
  search,
  filter,
}: {
  page: number;
  limit: number;
  search?: string;
  filter?: boolean;
}) => {
  const skip = (page - 1) * limit;
  const post = await prisma.post.findMany({
    skip: skip,
    take: limit,
    where: {
      AND: [
        search
          ? {
              OR: [
                {
                  title: {
                    contains: search,
                    mode: "insensitive",
                  },
                },
                {
                  content: {
                    contains: search,
                    mode: "insensitive",
                  },
                },
              ],
            }
          : {},
        filter !== undefined ? { isFeatured: filter } : {},
      ],
    },
    orderBy: {
      createdAt: "desc",
    },
  });
  return post;
};

const getPostById = async (id: number) => {
  const post = await prisma.post.findUniqueOrThrow({
    where: { id },
  });
  return post;
};

const deletePostById = async (id: number) => {
  await prisma.post.delete({
    where: { id },
  });
  return null;
};

const updatePostById = async (id: number, payload: Prisma.PostUpdateInput) => {
  const post = await prisma.post.update({
    where: { id },
    data: payload,
  });
  return post;
};

export const postService = {
  createPost,
  getAllPost,
  getPostById,
  deletePostById,
  updatePostById,
};
