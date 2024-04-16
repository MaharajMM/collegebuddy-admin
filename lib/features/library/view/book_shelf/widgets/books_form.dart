import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/students/student_form_view/const/student_form_keys.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/student_details_field.dart';
import 'package:college_buddy_admin/shared/widget/upload_image_filed.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddBooksForm extends StatelessWidget {
  final Widget actionButton;
  final bool isEditMode;
  final String? imageUrl;
  const AddBooksForm(
      {super.key,
      required this.actionButton,
      required this.isEditMode,
      this.imageUrl});

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
                    title: 'Book Name: ',
                    hintText: 'Book Name',
                    name: StudentFormKeys.name,
                  ),
                  StudentDetailsField(
                    title: 'Book no: ',
                    hintText: 'Book no',
                    name: StudentFormKeys.email,
                  ),
                  StudentDetailsField(
                    title: 'Serial no: ',
                    hintText: 'serial no',
                    name: StudentFormKeys.password,
                  ),
                  StudentDetailsField(
                    title: 'Author: ',
                    hintText: 'Author',
                    name: StudentFormKeys.rollNo,
                  ),
                  StudentDetailsField(
                    title: 'Edition: ',
                    hintText: 'Edition',
                    name: StudentFormKeys.regdNo,
                  ),
                  StudentDetailsField(
                    title: 'Publication: ',
                    hintText: 'Publication',
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
                  // const StudentSessionField(),
                  // const StudentBranchField(),
                  // const StudentDOBField(),
                  BooksImageField(imageUrl: imageUrl ?? ''),
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

class BooksImageField extends StatelessWidget {
  final String imageUrl;
  const BooksImageField({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: AppSmallText(
            text: 'Books Image: ',
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
            imageText: 'Upload Image',
          ).pOnly(bottom: 20),
        ),
      ],
    ).pOnly(bottom: 20);
  }
}
