import 'package:college_buddy_admin/features/notice_form/const/notice_form_keys.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/widget/student_details_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class NoticeFormView extends StatelessWidget {
  final Widget actionButton;
  final GlobalKey<FormBuilderState> formKey;
  final bool isEditMode;
  const NoticeFormView({
    super.key,
    required this.actionButton,
    required this.isEditMode,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    final noticeDateController = TextEditingController();
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const StudentDetailsField(
                    title: 'Notice title: ',
                    hintText: 'Title',
                    name: NoticeFormKeys.title,
                  ),
                  const StudentDetailsField(
                    title: 'Notice url: ',
                    hintText: 'URL',
                    name: NoticeFormKeys.downloadUrl,
                  ),
                  StudentDetailsField(
                    isSuffixIcon: true,
                    title: 'Notice Date',
                    hintText: 'Date of Notice',
                    name: NoticeFormKeys.date,
                    noticeDateController: noticeDateController,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        initialDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        noticeDateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                      }
                    },
                  ),
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
