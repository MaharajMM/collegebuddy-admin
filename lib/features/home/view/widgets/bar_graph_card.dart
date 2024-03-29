import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/data/models/bar_graph_model.dart';
import 'package:college_buddy_admin/data/models/graph_model.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BarGraphData {
  final data = [
    BarGraphModel(
      color: AppColors.kyellow1,
      label: 'Collections',
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
        // GraphModel(x: 6, y: 8),
      ],
    ),
    BarGraphModel(
      color: AppColors.green500,
      label: 'Fees',
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 9),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 5),
        GraphModel(x: 5, y: 7),
        // GraphModel(x: 6, y: 8),
      ],
    ),
    BarGraphModel(
      color: Colors.blue,
      label: 'Expenses',
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 7),
        // GraphModel(x: 6, y: 8),
      ],
    ),
  ];
  final label = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'June'];
}

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: barGraphData.data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) {
          return CustomCardWidget(
            padding: AppPadding.kQuatPad,
            color: AppColors.green100.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSmallText(
                  text: barGraphData.data[index].label,
                ).p8(),
                12.heightBox,
                Expanded(
                    child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      points: barGraphData.data[index].graph,
                      color: barGraphData.data[index].color,
                    ),
                    borderData: FlBorderData(border: const Border()),
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
                            return AppSmallText(
                              text: barGraphData.label[value.toInt()],
                              color: AppColors.grey500,
                              fontSize: 11,
                            ).pOnly(top: 5);
                          },
                        ),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          );
        });
  }

  List<BarChartGroupData> _chartGroups({required List<GraphModel> points, required Color color}) {
    return points
        .map(
          (e) => BarChartGroupData(
            x: e.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: e.y,
                width: 12,
                color: color.withOpacity(e.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              )
            ],
          ),
        )
        .toList();
  }
}
