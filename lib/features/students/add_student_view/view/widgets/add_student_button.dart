import 'package:college_buddy_admin/features/students/add_student_view/controller/add_student_pod.dart';
import 'package:college_buddy_admin/features/students/add_student_view/state/add_student_state.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddStudentButton extends ConsumerWidget {
  final VoidCallback onSubmit;
  const AddStudentButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addStudentFormAsync = ref.watch(addStudentFormProvider);

    return addStudentFormAsync.easyWhen(
      data: (addFoodFormState) {
        return switch (addFoodFormState) {
          InitialAddStudentForm() => AppPrimaryButton(
              labelText: 'Add Student',
              onPressed: onSubmit,
            ),
          AddingStudent() => const AppPrimaryButton(
              labelText: 'Adding',
              onPressed: null,
              isLoading: true,
            ),
          AddStudentFormSuccess() => AppPrimaryButton(
              labelText: 'Added',
              onPressed: () {},
            ),
          AddStudentFormError() => AppPrimaryButton(
              labelText: 'Retry',
              onPressed: onSubmit,
            ),
        };
      },
    );
  }
}
