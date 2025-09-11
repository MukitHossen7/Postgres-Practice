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
  // const getSingleUser = await prisma.user.findUniqueOrThrow({
  //   where: {
  //     id: 2,
  //   },
  // });
  // console.log(getSingleUser);
  // const updateUserById = await prisma.user.update({
  //   where: {
  //     id: 1,
  //   },
  //   data: {
  //     email: "hiya@gmail.com",
  //     name: "Hiya",
  //   },
  // });
  // console.log(updateUserById);
  // const updateAllUsers = await prisma.user.updateManyAndReturn({
  //   where: {
  //     profile: null,
  //   },
  //   data: {
  //     profile: "https://www.fakeimage.com",
  //   },
  // });
  // console.log(updateAllUsers);
  // const deleteById = await prisma.user.delete({
  //   where: {
  //     id: 1,
  //   },
  // });
  // console.log(deleteById);
  // const deleteAllUsers = await prisma.user.deleteMany({
  //   where: {
  //     id: { gt: 2 },
  //   },
  // });
  // console.log(deleteAllUsers);
}

main();
