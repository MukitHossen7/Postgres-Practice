import { prisma } from "../../config/db";

const createLogin = async (email: string, password: string) => {
  console.log(email, password);
  const user = await prisma.user.findUnique({
    where: { email },
  });

  if (!user) {
    throw new Error("User not found");
  }
  if (user && user.password === password) {
    return user;
  } else {
    throw new Error("Invalid credentials");
  }
};

export const authService = {
  createLogin,
};
