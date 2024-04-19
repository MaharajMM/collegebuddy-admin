import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusBadge extends StatelessWidget {
  final String statusTittle;
  final Color badgeColor;
  final IconData badgeIcon;
  final int statusCount;
  const StatusBadge({
    super.key,
    required this.statusTittle,
    required this.badgeColor,
    required this.badgeIcon,
    required this.statusCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: badgeColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AppSmallText(
                  text: statusCount.toString(),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey100),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    badgeIcon,
                    color: AppColors.grey100,
                    size: 25,
                  ),
                  8.widthBox,
                  AppSmallText(
                      text: statusTittle,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey100)
                ],
              ),
            ],
          ).p12(),
        ),
      ],
    );
  }
}
