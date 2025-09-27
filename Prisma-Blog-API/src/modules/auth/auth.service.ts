import { prisma } from "../../config/db";

const createLogin = async (email: string, password: string) => {
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

const createLogInGoogle = async (payload: any) => {
  const { name, email, image, provider, providerId } = payload;

  if (!email) throw new Error("Email required");

  let user = await prisma.user.findUnique({
    where: {
      email: email,
    },
  });

  if (!user) {
    user = await prisma.user.create({
      data: {
        name: name,
        email: email,
        picture: image,
        provider: provider,
        providerId: providerId,
        isVerified: true,
      },
    });
  }
  return user;
};

export const authService = {
  createLogin,
  createLogInGoogle,
};
