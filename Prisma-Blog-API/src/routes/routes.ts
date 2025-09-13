import { Router } from "express";
import userRoute from "../modules/user/user.routes";
import postRoute from "../modules/post/post.routes";

const routes = Router();

routes.use("/users", userRoute);
routes.use("/post", postRoute);

export default routes;
