import { Prisma, User } from "@prisma/client";
import { prisma } from "../../config/db";

const createUser = async (payload: Prisma.UserCreateInput): Promise<User> => {
  const user = await prisma.user.create({
    data: payload,
  });
  return user;
};

const getAllUsers = async () => {
  const users = await prisma.user.findMany({
    select: {
      id: true,
      name: true,
      email: true,
      role: true,
      phone: true,
      picture: true,
      status: true,
      isVerified: true,
      createdAt: true,
      updatedAt: true,
    },
    orderBy: {
      createdAt: "desc",
    },
  });
  return users;
};

const getUserById = async (id: number) => {
  const user = await prisma.user.findUnique({
    select: {
      id: true,
      name: true,
      email: true,
      role: true,
      phone: true,
      picture: true,
      status: true,
      isVerified: true,
      createdAt: true,
      updatedAt: true,
    },
    where: {
      id: id,
    },
  });
  return user;
};

const updateUserById = async (id: number, payload: Prisma.UserUpdateInput) => {
  const user = await prisma.user.update({
    where: {
      id: id,
    },
    data: payload,
  });
  return user;
};

const deleteUserById = async (id: number) => {
  await prisma.user.delete({
    where: {
      id: id,
    },
  });
  return null;
};

export const userService = {
  createUser,
  getAllUsers,
  getUserById,
  updateUserById,
  deleteUserById,
};
