import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/students/student_form_view/const/student_form_keys.dart';
import 'package:college_buddy_admin/shared/widget/upload_image_filed.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentImageField extends StatelessWidget {
  final String imageUrl;
  const StudentImageField({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: AppSmallText(
            text: 'Student Image: ',
            fontSize: 18,
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          flex: 2,
          child: UploadImageField(
            name: StudentFormKeys.profileImage,
            height: 300,
            imageUrl: imageUrl,
            imageText: 'Upload Food Image',
          ).pOnly(bottom: 20),
        ),
      ],
    ).pOnly(bottom: 20);
  }
}
