import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/students/add_student_view/controller/add_student_pod.dart';
import 'package:college_buddy_admin/features/students/add_student_view/view/widgets/add_student_button.dart';
import 'package:college_buddy_admin/features/students/all_students/controller/students_pod.dart';
import 'package:college_buddy_admin/features/students/student_form_view/const/student_form_keys.dart';
import 'package:college_buddy_admin/features/students/student_form_view/view/student_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class AddStudentPage extends StatelessWidget {
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddStudentView();
  }
}

class AddStudentView extends ConsumerStatefulWidget {
  const AddStudentView({super.key});

  @override
  ConsumerState<AddStudentView> createState() => _AddStudentViewState();
}

class _AddStudentViewState extends ConsumerState<AddStudentView> {
  final _addStudentFormKey = GlobalKey<FormBuilderState>();

  void submit() {
    if (_addStudentFormKey.currentState?.saveAndValidate() ?? false) {
      HapticFeedback.lightImpact();
      Feedback.forTap(context);
      final fields = _addStudentFormKey.currentState!.fields;
      final name = fields[StudentFormKeys.name]!.value as String;
      final email = fields[StudentFormKeys.email]!.value as String;
      final passWord = fields[StudentFormKeys.password]!.value as String;
      final rollNo = fields[StudentFormKeys.rollNo]!.value as String;
      final regdNo = fields[StudentFormKeys.regdNo]!.value as String;
      final phone = fields[StudentFormKeys.phone]!.value as String;
      final session = fields[StudentFormKeys.session]?.value ?? '';
      final branch = fields[StudentFormKeys.branch]!.value as String;
      final dob = fields[StudentFormKeys.dob]!.value as String;
      ref.read(addStudentFormProvider.notifier).addStudent(
            name: name,
            email: email,
            password: passWord,
            regdNo: regdNo,
            rollNo: int.parse(rollNo),
            phone: int.parse(phone),
            session: session,
            branch: branch,
            dob: dob,
            onAddStudent: () {
              context.showToast(msg: 'success');
              ref.invalidate(studentsProvider);
              context.router.maybePop();
            },
          );
    } else {
      context.showToast(msg: 'Please fill all the fields');
      // return Container();
    }
  }

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
