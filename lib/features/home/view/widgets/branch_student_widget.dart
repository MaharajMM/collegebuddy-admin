import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';

class BranchStudentColumn extends StatelessWidget {
  final String branch;
  final Color branchColor;
  final String studentCount;
  const BranchStudentColumn({
    super.key,
    required this.branch,
    required this.studentCount,
    required this.branchColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSmallText(
          text: studentCount,
          color: branchColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        AppSmallText(
          text: branch,
          color: AppColors.grey600,
          fontSize: 12,
        ),
      ],
    );
  }
}
