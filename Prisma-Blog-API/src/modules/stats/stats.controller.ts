import { Request, Response } from "express";
import { statsService } from "./stats.service";

const getBlogStat = async (req: Request, res: Response) => {
  try {
    const stats = await statsService.getBlogStat();
    res.status(200).json({
      success: true,
      message: "Retrieve Blog stats successfully",
      data: stats,
    });
  } catch (error) {
    console.log(error);
  }
};

export const statsController = {
  getBlogStat,
};
