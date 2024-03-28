import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChartData {
  final paiChartSelectionData = [
    PieChartSectionData(
      color: AppColors.kPrimaryBgColor,
      value: 40,
      radius: 25,
      showTitle: false,
    ),
    PieChartSectionData(
      color: Colors.pink[50]!,
      value: 20,
      radius: 22,
      showTitle: false,
    ),
    PieChartSectionData(
      color: Colors.red,
      value: 10,
      radius: 19,
      showTitle: false,
    ),
    PieChartSectionData(
      color: Colors.purple,
      value: 15,
      radius: 16,
      showTitle: false,
    ),
    PieChartSectionData(
      color: AppColors.kPrimaryBgColor.withOpacity(0.2),
      value: 25,
      radius: 13,
      showTitle: false,
    ),
  ];
}

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartData.paiChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                10.heightBox,
                Text(
                  '70%',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: AppColors.kPrimaryTextColor,
                        fontWeight: FontWeight.w500,
                        height: 0.5,
                      ),
                ),
                8.heightBox,
                const Text('of 100%')
              ],
            ),
          )
        ],
      ),
    );
  }
}
