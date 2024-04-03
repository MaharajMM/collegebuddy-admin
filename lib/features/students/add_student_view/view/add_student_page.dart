import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/students/add_student_view/view/widgets/add_student_button.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/student_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class AddStudentPage extends StatelessWidget {
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddStudentView();
  }
}

class AddStudentView extends StatefulWidget {
  const AddStudentView({super.key});

  @override
  State<AddStudentView> createState() => _AddStudentViewState();
}

class _AddStudentViewState extends State<AddStudentView> {
  final _addStudentFormKey = GlobalKey<FormBuilderState>();

  void submit() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.green500,
        title: const AppSmallText(
          text: 'Add Student',
          fontSize: 24,
          color: AppColors.grey200,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context.maybePop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey200,
          ),
        ),
      ),
      body: SafeArea(
        child: FormBuilder(
          key: _addStudentFormKey,
          initialValue: const {},
          child: StudentFormView(
            actionButton: AddStudentButton(onSubmit: submit),
            isEditMode: false,
            imageUrl: null,
          ),
        ).scrollVertical().p(16),
      ),
    );
  }
}
