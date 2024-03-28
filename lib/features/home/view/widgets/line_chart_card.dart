import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LineData {
  final spots = [
    const FlSpot(1.68, 21.04),
    const FlSpot(2.85, 25.23),
    const FlSpot(5.19, 19.82),
    const FlSpot(6.01, 24.49),
    const FlSpot(7.81, 19.82),
    const FlSpot(9.49, 13.50),
    const FlSpot(12.26, 19.57),
    const FlSpot(15.63, 20.90),
    const FlSpot(20.39, 39.20),
    const FlSpot(23.69, 75.62),
    const FlSpot(26.11, 46.58),
    const FlSpot(29.87, 42.97),
    const FlSpot(32.49, 46.54),
    const FlSpot(35.09, 40.72),
    const FlSpot(38.74, 43.18),
    const FlSpot(41.47, 59.91),
    const FlSpot(43.12, 53.18),
    const FlSpot(46.30, 90.10),
    const FlSpot(47.88, 81.59),
    const FlSpot(51.71, 75.53),
    const FlSpot(54.21, 78.95),
    const FlSpot(55.23, 86.94),
    const FlSpot(57.40, 78.98),
    const FlSpot(60.49, 74.38),
    const FlSpot(64.30, 70.74),
    const FlSpot(70.35, 75.43),
    const FlSpot(73.39, 69.88),
    const FlSpot(75.87, 80.04),
    const FlSpot(77.32, 74.38),
    const FlSpot(81.43, 68.43),
    const FlSpot(86.12, 69.45),
    const FlSpot(90.06, 78.60),
    const FlSpot(94.68, 46.05),
    const FlSpot(98.35, 42.80),
    const FlSpot(101.25, 53.05),
    const FlSpot(106.65, 42.31),
    const FlSpot(108.20, 32.64),
    const FlSpot(110.40, 45.14),
    const FlSpot(114.24, 45.14),
    const FlSpot(116.60, 42.13),
    const FlSpot(118.52, 57.60),
  ];
  final leftTitle = {
    0: '0',
    20: '2k',
    40: '4k',
    60: '6k',
    80: '8k',
    100: '10k',
  };
  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Steps overview',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          20.heightBox,
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(handleBuiltInTouches: true),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: const TextStyle(
                                    color: AppColors.grey400,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.leftTitle[value.toInt()].toString(),
                                  style: const TextStyle(
                                    color: AppColors.grey400,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                      interval: 1,
                      reservedSize: 40,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: AppColors.selectionColor,
                    spots: data.spots,
                    isCurved: true,
                    barWidth: 2.5,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [AppColors.selectionColor.withOpacity(0.8), Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    dotData: const FlDotData(show: false),
                  )
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
