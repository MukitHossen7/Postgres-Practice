import { Request, Response } from "express";
import { userService } from "./user.service";

const createUser = async (req: Request, res: Response) => {
  try {
    const user = await userService.createUser(req.body);
    res.status(201).json({
      success: true,
      message: "User created successfully",
      data: user,
    });
  } catch (error) {
    console.log(error);
  }
};

const getAllUsers = async (req: Request, res: Response) => {
  try {
    const user = await userService.getAllUsers();
    res.status(200).json({
      success: true,
      message: "User retrieve successfully",
      data: user,
    });
  } catch (error) {
    console.log(error);
  }
};

const getUserById = async (req: Request, res: Response) => {
  try {
    const id = Number(req.params.id);
    const user = await userService.getUserById(id);
    res.status(200).json({
      success: true,
      message: "Single user retrieve successfully",
      data: user,
    });
  } catch (error) {
    console.log(error);
  }
};

const deleteUserById = async (req: Request, res: Response) => {
  try {
    const id = Number(req.params.id);
    const user = await userService.deleteUserById(id);
    res.status(200).json({
      success: true,
      message: "User delete successfully",
      data: user,
    });
  } catch (error) {
    console.log(error);
  }
};

const updateUserById = async (req: Request, res: Response) => {
  try {
    const id = Number(req.params.id);
    const user = await userService.updateUserById(id, req.body);
    res.status(200).json({
      success: true,
      message: "User Update successfully",
      data: user,
    });
  } catch (error) {
    console.log(error);
  }
};

export const userController = {
  createUser,
  getAllUsers,
  getUserById,
  deleteUserById,
  updateUserById,
};
