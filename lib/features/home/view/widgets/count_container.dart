import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CountContainer extends StatelessWidget {
  const CountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0, // Adjust spacing as needed
        crossAxisSpacing: 15.0, // Adjust spacing as needed
        childAspectRatio: 2.0, // Adjust aspect ratio as needed
        mainAxisExtent: 170,
      ),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) => Container(
        height: 100,
        padding: AppPadding.kSinglePad,
        decoration: BoxDecoration(
          color: AppColors.kSecondaryBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.green100.withOpacity(0.4),
                    borderRadius: AppBorder.kHalfCurve,
                  ),
                  child: const Icon(
                    Icons.calendar_month_sharp,
                    color: AppColors.green500,
                    size: 30,
                  ),
                ),
                const Icon(
                  Icons.more_vert_rounded,
                  color: AppColors.grey400,
                  size: 25,
                )
              ],
            ),
            8.heightBox,
            switch (index) {
              0 => Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AppSmallText(
                        text: 'February 2024',
                      ).pOnly(bottom: 5),
                      const AppSmallText(
                        text: 'Your february class routine is here',
                        fontSize: 12,
                        color: AppColors.grey400,
                      ),
                      8.heightBox,
                      Flexible(
                        child: AppPrimaryButton(
                          fontColor: AppColors.kPrimaryTextColor,
                          labelText: 'Download (pdf)',
                          onPressed: () {},
                          freeSize: true,
                          borderRadius: AppBorder.kQuatCurve,
                          size: const Size(double.infinity, 35),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              1 => Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AppSmallText(
                        text: 'March 2024',
                      ).pOnly(bottom: 5),
                      const AppSmallText(
                        text: 'Your march class routine is here',
                        fontSize: 12,
                        color: AppColors.grey400,
                      ),
                      8.heightBox,
                      Flexible(
                        child: AppPrimaryButton(
                          fontColor: AppColors.kPrimaryTextColor,
                          labelText: 'Download (pdf)',
                          onPressed: () {},
                          freeSize: true,
                          borderRadius: AppBorder.kQuatCurve,
                          size: const Size(double.infinity, 35),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              int() => throw UnimplementedError(),
            },
          ],
        ),
      ),
    );
  }
}
