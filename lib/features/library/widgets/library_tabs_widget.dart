import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LibraryTabs extends StatelessWidget {
  const LibraryTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                context.navigateTo(const BookRequestsRoute());
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.green100.withOpacity(0.4),
                child: const Icon(
                  Icons.notifications_rounded,
                  color: AppColors.kprimaryBlack,
                  size: 30,
                ),
              ),
            ),
            const AppSmallText(
                text: 'Book Requests',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey400)
          ],
        ),
        20.widthBox,
        Column(
          children: [
            GestureDetector(
              onTap: () {
                context.navigateTo(const BookShelfRoute());
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.green100.withOpacity(0.4),
                child: const Icon(
                  Icons.my_library_books_rounded,
                  color: AppColors.kprimaryBlack,
                  size: 30,
                ),
              ),
            ),
            const AppSmallText(
                text: 'Books Shelf',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey400)
          ],
        ),
      ],
    );
  }
}
