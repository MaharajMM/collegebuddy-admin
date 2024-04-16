import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class BooksDetailsField extends StatelessWidget {
  final String hintText;
  final String title;
  final String name;
  const BooksDetailsField(
      {super.key,
      required this.hintText,
      required this.name,
      required this.title});

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
            hintText: hintText,
            name: name,
            islabelText: false,
          ),
        )
        // .pOnly(right: 400),
      ],
    ).pOnly(bottom: 20);
  }
}
