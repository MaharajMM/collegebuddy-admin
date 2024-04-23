import 'package:college_buddy_admin/data/models/students_model.dart';
import 'package:college_buddy_admin/data/repository/students/students_repo_pod.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/cancel_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final studentsProvider = FutureProvider.autoDispose<StudentsModel>((ref) async {
  final result =
      await ref.watch(studentsRepoProvider).getAllStudents(cancelToken: ref.cancelToken());
  return result.when((studentsModel) => studentsModel, (error) => throw (error.errorMessage));
});
