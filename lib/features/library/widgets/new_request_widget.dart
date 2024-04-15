import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewRequestCard extends StatelessWidget {
  const NewRequestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.5),
        border: Border.all(color: AppColors.green100, width: 2),
        borderRadius: BorderRadius.circular(12.00),
      ),
      child: Column(
        children: [
          const AppSmallText(
              //========   text should be fetched from the database   =======//
              text: '12',
              fontSize: 35,
              fontWeight: FontWeight.bold),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.group_add_rounded,
                size: 25,
                color: AppColors.grey400,
              ),
              10.widthBox,
              const AppSmallText(
                text: 'New Requests',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey400,
              ),
            ],
          ),
        ],
      ).p12(),
    ).w(200);
  }
}
