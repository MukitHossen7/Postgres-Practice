import express from "express";
import { userController } from "./user.controller";

const userRoute = express.Router();

userRoute.post("/register", userController.createUser);
userRoute.get("/", userController.getAllUsers);
userRoute.get("/:id", userController.getUserById);
userRoute.delete("/:id", userController.deleteUserById);
userRoute.patch("/:id", userController.updateUserById);

export default userRoute;
