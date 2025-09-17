import { prisma } from "../../config/db";

const getBlogStat = async () => {
  return prisma.$transaction(async (tx) => {
    const blogStats = await tx.post.aggregate({
      _count: true,
      _sum: {
        views: true,
      },
      _avg: {
        views: true,
      },
      _max: {
        views: true,
      },
      _min: {
        views: true,
      },
    });

    const isFeatured = await tx.post.count({
      where: {
        isFeatured: true,
      },
    });

    const topFeatured = await tx.post.findFirst({
      where: {
        isFeatured: true,
      },
      orderBy: {
        views: "desc",
      },
    });
    return {
      totalCount: blogStats._count ?? 0,
      totalViews: blogStats._sum.views ?? 0,
      avgViews: blogStats._avg.views ?? 0,
      maxViews: blogStats._max.views ?? 0,
      minViews: blogStats._min.views ?? 0,
      featuresCount: isFeatured,
      topFeatured: topFeatured,
    };
  });
};

export const statsService = {
  getBlogStat,
};
