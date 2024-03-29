import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AttendanceAndExamWidget extends StatelessWidget {
  const AttendanceAndExamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: CustomCardWidget(
            padding: AppPadding.kHalfPad,
            color: AppColors.green100.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TotalCalculationRow(
                  header: 'Attendance',
                  textField1: 'Roll No.',
                  textField2: 'Semester',
                ),
                12.heightBox,
                const TotalCalculationRow(
                  header: 'Exam',
                  textField1: 'Regd. No.',
                  textField2: 'Semester',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TotalCalculationRow extends StatelessWidget {
  final String header;
  final String textField1;
  final String? textField2;
  const TotalCalculationRow({
    super.key,
    required this.header,
    required this.textField1,
    this.textField2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSmallText(
          text: header,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        12.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: Row(
                children: [
                  Flexible(
                    child: CustomTextFormField(
                      name: '',
                      hintText: textField1,
                    ),
                  ),
                  8.widthBox,
                  Flexible(
                    child: CustomTextFormField(
                      name: '',
                      hintText: textField2,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: AppColors.green600,
                child: Icon(Icons.arrow_forward_sharp),
              ),
            ).pSymmetric(h: 20),
            // 50.widthBox,
            Flexible(
              child: const CustomTextFormField(
                hintText: 'Total %',
                name: 'attendace',
              ).w(250),
            ),
          ],
        ),
      ],
    );
  }
}
