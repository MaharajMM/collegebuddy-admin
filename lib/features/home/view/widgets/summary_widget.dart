import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/features/home/view/widgets/pie_chart_card.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        20.heightBox,
        const PieChartCard(),
        const Text('Summary'),
        10.heightBox,
        Container(
          padding: AppPadding.kHalfVertical,
          decoration: BoxDecoration(
            borderRadius: AppBorder.kQuatCurve,
            color: AppColors.cardBackgroundColor,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('100'),
                  Text(
                    'Students',
                    style: TextStyle(
                      color: AppColors.grey500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('10'),
                  Text(
                    'Teachers',
                    style: TextStyle(
                      color: AppColors.grey500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('5'),
                  Text(
                    'Subjects',
                    style: TextStyle(
                      color: AppColors.grey500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        20.heightBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Schedule'),
            5.heightBox,
            ListView.separated(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: AppBorder.kQuatCurve,
                  ),
                  tileColor: AppColors.kBlack,
                  title: const Text('Subject Name'),
                  subtitle: const Text('Teacher Name'),
                  trailing: const Text('Time'),
                );
              },
              separatorBuilder: (context, index) => 8.heightBox,
            ),
          ],
        )
      ],
    ).pSymmetric(h: 20);
  }
}
