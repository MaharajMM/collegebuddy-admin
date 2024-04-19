import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TotalSummaryCard extends StatelessWidget {
  const TotalSummaryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.grey300, width: 2),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppSmallText(
            text: 'Summary',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ).p16(),
          //*  SHOWS THE SUMMARY OF THE LIBRARY AS A CHART
        ],
      ),
      //Height should be removed after adding the full content
    );
  }
}
