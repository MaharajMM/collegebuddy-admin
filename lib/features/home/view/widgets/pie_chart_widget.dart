import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/branch_student_widget.dart';
import 'package:college_buddy_admin/features/home/view/widgets/pie_chart_card.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PieChartCard(),
        const AppSmallText(text: 'Summary'),
        10.heightBox,
        Container(
          padding: AppPadding.kHalfVertical,
          decoration: BoxDecoration(
            borderRadius: AppBorder.kQuatCurve,
            color: AppColors.green100.withOpacity(0.4),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BranchStudentColumn(
                branchColor: AppColors.kPrimaryColor,
                branch: 'CSE',
                studentCount: '1000',
              ),
              BranchStudentColumn(
                branchColor: AppColors.kyellow1,
                branch: 'ME',
                studentCount: '650',
              ),
              BranchStudentColumn(
                branchColor: AppColors.kPrimaryRarelyUsedColor,
                branch: 'CE',
                studentCount: '400',
              ),
              BranchStudentColumn(
                branchColor: AppColors.kPrimaryBgColor,
                branch: 'EE',
                studentCount: '225',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
