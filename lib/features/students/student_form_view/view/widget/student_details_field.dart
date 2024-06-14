import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentDetailsField extends StatelessWidget {
  final String hintText;
  final String title;
  final String name;
  final bool isSuffixIcon;
  final VoidCallback? onTap;
  final TextEditingController? noticeDateController;
  const StudentDetailsField({
    super.key,
    required this.hintText,
    required this.name,
    required this.title,
    this.isSuffixIcon = false,
    this.onTap,
    this.noticeDateController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: AppSmallText(
            text: title,
            fontSize: 18,
            textAlign: TextAlign.start,
          ),
        ),

        Expanded(
          flex: 2,
          child: CustomTextFormField(
            controller: noticeDateController,
            onTap: onTap,
            hintText: hintText,
            name: name,
            islabelText: false,
            sufixIcon: isSuffixIcon ? const Icon(Icons.calendar_month) : null,
          ),
        )
        // .pOnly(right: 400),
      ],
    ).pOnly(bottom: 20);
  }
}
