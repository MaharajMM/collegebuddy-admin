import 'package:college_buddy_admin/features/students/student_form_view/const/student_form_keys.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/Student_session_field.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/student_branch_field.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/student_details_field.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/student_dob_field.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/student_image_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentFormView extends StatelessWidget {
  final Widget actionButton;
  final bool isEditMode;
  final String? imageUrl;
  const StudentFormView(
      {super.key, required this.actionButton, required this.isEditMode, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StudentDetailsField(
                    title: 'Student Name: ',
                    hintText: 'Name',
                    name: StudentFormKeys.name,
                  ),
                  StudentDetailsField(
                    title: 'Student Email: ',
                    hintText: 'Email',
                    name: StudentFormKeys.email,
                  ),
                  StudentDetailsField(
                    title: 'Student Password: ',
                    hintText: 'Password',
                    name: StudentFormKeys.password,
                  ),
                  StudentDetailsField(
                    title: 'Student Roll No: ',
                    hintText: 'Roll no',
                    name: StudentFormKeys.rollNo,
                  ),
                  StudentDetailsField(
                    title: 'Student Registration No: ',
                    hintText: 'Registration No.',
                    name: StudentFormKeys.regdNo,
                  ),
                  StudentDetailsField(
                    title: 'Student Phone No: ',
                    hintText: 'Phone',
                    name: StudentFormKeys.phone,
                  ),
                ],
              ),
            ),
            100.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const StudentSessionField(),
                  const StudentBranchField(),
                  const StudentDOBField(),
                  StudentImageField(imageUrl: imageUrl ?? ''),
                ],
              ),
            ),
          ],
        ),
        100.heightBox,
        actionButton.w(500),
      ],
    );
  }
}
