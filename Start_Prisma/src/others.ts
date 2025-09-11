import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function others() {
  // const createManyUsers = await prisma.user.createMany({
  //   data: [
  //     { email: "user1@example.com", name: "Alice", profile: "Profile 1" },
  //     { email: "user2@example.com", name: "Bob", profile: "Profile 2" },
  //     { email: "user3@example.com", name: "Charlie", profile: "Profile 3" },
  //     { email: "user4@example.com", name: "David", profile: "Profile 4" },
  //     { email: "user5@example.com", name: "Eve", profile: "Profile 5" },
  //     { email: "user6@example.com", name: "Frank", profile: "Profile 6" },
  //     { email: "user7@example.com", name: "Grace", profile: "Profile 7" },
  //     { email: "user8@example.com", name: "Hannah", profile: "Profile 8" },
  //     { email: "user9@example.com", name: "Ian", profile: "Profile 9" },
  //     { email: "user10@example.com", name: "Jack", profile: "Profile 10" },
  //   ],
  // });
  // console.log(createManyUsers);

  const getAllUsers = await prisma.user.findMany({
    orderBy: {
      name: "asc",
    },
  });
  console.log(getAllUsers);
}

others();
