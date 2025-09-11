import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  // await prisma.user.create({
  //   data: {
  //     email: "mim@gmail.com",
  //     name: "mim",
  //   },
  // });

  // const allUsers = await prisma.user.findMany({
  //   where: {
  //     id: 4,
  //   },
  // });
  // console.log(allUsers);

  // const getSingleUser = await prisma.user.findUnique({
  //   where: {
  //     id: 5,
  //   },
  // });
  // console.log(getSingleUser);

  const getSingleUser = await prisma.user.findUniqueOrThrow({
    where: {
      id: 2,
    },
  });
  console.log(getSingleUser);
}

main();
