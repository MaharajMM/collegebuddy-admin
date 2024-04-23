import 'package:college_buddy_admin/features/students/add_student_view/controller/notifier/add_student_notifier.dart';
import 'package:college_buddy_admin/features/students/add_student_view/state/add_student_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addStudentFormProvider =
    AsyncNotifierProvider.autoDispose<AddStudentFormNotifier, AddStudentFormState>(
  AddStudentFormNotifier.new,
);
