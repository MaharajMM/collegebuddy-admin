import 'package:college_buddy_admin/features/home/view/widgets/calender_widget.dart';
import 'package:college_buddy_admin/features/home/view/widgets/notice_widget.dart';
import 'package:college_buddy_admin/features/home/view/widgets/pie_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 20.heightBox,
        const PieChartWidget(),
        20.heightBox,
        const NoticeWidget(),
        20.heightBox,
        const CalenderWidget()
      ],
    ).pSymmetric(h: 20);
  }
}
