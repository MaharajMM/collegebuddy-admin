import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CountContainer extends StatelessWidget {
  const CountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, mainAxisSpacing: 8.0, // Adjust spacing as needed
        crossAxisSpacing: 8.0, // Adjust spacing as needed
        childAspectRatio: 2.0, // Adjust aspect ratio as needed
        mainAxisExtent: 4,
      ),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) => Container(
        height: 100,
        padding: AppPadding.kSingleHorizontal,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryBgColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppSmallText(
                  text: 'Students',
                  color: AppColors.grey400,
                ).pOnly(bottom: 5),
                const AppSmallText(
                  text: '2.25K',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const Icon(
              Icons.people,
              size: 40,
              color: AppColors.purple500,
            ),
          ],
        ),
      ),
    );
  }
}
