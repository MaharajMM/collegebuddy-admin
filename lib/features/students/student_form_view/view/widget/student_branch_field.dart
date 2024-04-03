import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentBranchField extends StatelessWidget {
  const StudentBranchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: AppSmallText(
            text: 'Student Branch: ',
            fontSize: 18,
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const BranchContainer(value: 'CSE').pSymmetric(h: 20),
              const BranchContainer(value: 'ME').pSymmetric(h: 20),
              const BranchContainer(value: 'CE').pSymmetric(h: 20),
              const BranchContainer(value: 'EE').pSymmetric(h: 20),
            ],
          ),
        )
      ],
    ).pOnly(bottom: 20);
  }
}

class BranchContainer extends StatefulWidget {
  final String value;
  const BranchContainer({
    super.key,
    required this.value,
  });

  @override
  State<BranchContainer> createState() => _BranchContainerState();
}

class _BranchContainerState extends State<BranchContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? AppColors.kSuccessColor : AppColors.grey800),
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? AppColors.kSuccessColor.withOpacity(0.4) : Colors.transparent,
        ),
        child: Center(
          child: AppSmallText(
            text: widget.value,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
