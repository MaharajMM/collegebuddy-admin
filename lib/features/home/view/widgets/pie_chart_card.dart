import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChartData {
  final paiChartSelectionData = [
    PieChartSectionData(
      // color: AppColors.kPrimaryBgColor,
      color: AppColors.kPrimaryColor,
      value: 45,
      radius: 25,
      showTitle: false,
    ),
    PieChartSectionData(
      // color: Colors.pink[50]!,
      color: AppColors.kyellow1,
      value: 30,
      radius: 22,
      showTitle: false,
    ),
    PieChartSectionData(
      color: AppColors.kPrimaryRarelyUsedColor,
      value: 15,
      radius: 19,
      showTitle: false,
    ),
    PieChartSectionData(
      color: AppColors.kPrimaryBgColor,
      value: 10,
      radius: 16,
      showTitle: false,
    ),
    // PieChartSectionData(
    //   color: AppColors.kPrimaryBgColor.withOpacity(0.2),
    //   value: 25,
    //   radius: 13,
    //   showTitle: false,
    // ),
  ];
}

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();
    return Stack(
      children: [
        PieChart(
          PieChartData(
            sectionsSpace: 1,
            centerSpaceRadius: 70,
            startDegreeOffset: -90,
            sections: pieChartData.paiChartSelectionData,
            // centerSpaceColor: AppColors.green100,
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppSmallText(
                text: 'Total',
                color: AppColors.grey500,
              ),
              8.heightBox,
              const AppSmallText(
                text: '2250',
                fontSize: 24,
              ),
            ],
          ),
        )
      ],
    ).h(200);
  }
}
