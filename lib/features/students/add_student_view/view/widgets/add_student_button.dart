import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddStudentButton extends ConsumerWidget {
  final VoidCallback onSubmit;
  const AddStudentButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPrimaryButton(labelText: 'Add Student', onPressed: onSubmit);
  }
}
