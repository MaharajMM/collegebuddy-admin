import 'dart:async';

import 'package:college_buddy_admin/data/repository/students/students_repo_pod.dart';
import 'package:college_buddy_admin/features/students/add_student_view/state/add_student_state.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/cancel_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddStudentFormNotifier extends AutoDisposeAsyncNotifier<AddStudentFormState> {
  @override
  FutureOr<AddStudentFormState> build() {
    return const InitialAddStudentForm();
  }

  Future<void> addStudent({
    CancelToken? cancelToken,
    required String name,
    required String email,
    required String password,
    required String regdNo,
    required int rollNo,
    required int phone,
    required String session,
    required String branch,
    required String dob,
    required void Function() onAddStudent,
  }) async {
    state = const AsyncData(AddingStudent());
    state = await AsyncValue.guard(() async {
      final result = await ref.watch(studentsRepoProvider).addStudent(
            name: name,
            email: email,
            password: password,
            regdNo: regdNo,
            rollNo: rollNo,
            phone: phone,
            session: session,
            branch: branch,
            dob: dob,
            cancelToken: ref.cancelToken(),
          );

      return result.when((addStudentModel) {
        if (addStudentModel.student != null) {
          onAddStudent();
          return const AddStudentFormSuccess();
        } else {
          return const AddStudentFormError('Server error');
        }
      }, (error) => AddStudentFormError(error.errorMessage));
    });
  }
}
