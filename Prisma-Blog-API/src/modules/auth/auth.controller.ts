import { Request, Response } from "express";
import { authService } from "./auth.service";

const createLogin = async (req: Request, res: Response) => {
  try {
    const { email, password } = req.body;
    const user = await authService.createLogin(email, password);
    res.status(200).json({
      success: true,
      message: "User login successfully",
      data: user,
    });
  } catch (error) {
    res.status(401).json({
      success: false,
      message: (error as Error).message,
    });
    console.log(error);
  }
};

export const authController = {
  createLogin,
};
