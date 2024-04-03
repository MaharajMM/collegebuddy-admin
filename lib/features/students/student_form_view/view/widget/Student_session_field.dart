import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/students/student_form_view/const/student_form_keys.dart';
import 'package:college_buddy_admin/shared/widget/drop_down/drop_down_button_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentSessionField extends StatelessWidget {
  const StudentSessionField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: AppSmallText(
            text: 'Student Session: ',
            fontSize: 18,
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              const Expanded(
                child: DropDownButtonField(
                  dropDownItem: ['2018', '2019', '2020'],
                  hintText: 'From',
                  name: StudentFormKeys.session,
                ),
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                size: 30,
              ).pSymmetric(h: 20),
              const Expanded(
                child: DropDownButtonField(
                  dropDownItem: ['2018', '2019', '2020'],
                  hintText: 'To',
                  name: StudentFormKeys.session,
                ),
              ),
            ],
          ),
        )
      ],
    ).pOnly(bottom: 20);
  }
}
