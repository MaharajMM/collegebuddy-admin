import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NoticeWidget extends StatelessWidget {
  const NoticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      color: AppColors.green100.withOpacity(0.4),
      padding: AppPadding.kHalfPad,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSmallText(
                text: 'Notifications',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              AppSmallText(
                text: 'View all',
                fontSize: 12,
                color: AppColors.grey400,
              )
            ],
          ),
          12.heightBox,
          ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: AppPadding.kHalfPad,
                decoration: BoxDecoration(
                  borderRadius: AppBorder.kHalfCurve,
                  color: AppColors.kSecondaryBgColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        12.widthBox,
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppSmallText(
                              text: 'Emergency College closure',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            AppSmallText(
                              text: 'Feb 15',
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    12.widthBox,
                    const Spacer(),
                    const AppSmallText(
                      text: '4:00 PM',
                      fontSize: 12,
                    ),
                  ],
                ),
              );

              // ListTile(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: AppBorder.kQuatCurve,
              //   ),
              //   tileColor: AppColors.green400,
              //   leading: Container(
              //     height: 40,
              //     width: 40,
              //     decoration: BoxDecoration(
              //       color: AppColors.green100.withOpacity(0.4),
              //       borderRadius: AppBorder.kHalfCurve,
              //     ),
              //     child: const Icon(
              //       Icons.calendar_month_sharp,
              //       color: AppColors.green800,
              //       size: 30,
              //     ),
              //   ),
              //   title: const AppSmallText(
              //     text: 'Emergency College closure',
              //     textAlign: TextAlign.start,
              //   ),
              //   subtitle: Row(
              //     children: [
              //       const Icon(
              //         Icons.calendar_month_outlined,
              //         size: 15,
              //       ),
              //       8.widthBox,
              //       const AppSmallText(
              //         text: 'Teacher Name',
              //         textAlign: TextAlign.start,
              //       ),
              //     ],
              //   ),
              //   trailing: const AppSmallText(
              //     text: '4:00 PM',
              //     textAlign: TextAlign.start,
              //   ),
              // );
            },
            separatorBuilder: (context, index) => 12.heightBox,
          ),
        ],
      ),
    );
  }
}
