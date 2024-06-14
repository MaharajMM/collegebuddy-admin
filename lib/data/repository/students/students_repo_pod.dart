import 'package:college_buddy_admin/data/repository/students/i_students_repository.dart';
import 'package:college_buddy_admin/data/repository/students/students_repository.dart';
import 'package:college_buddy_admin/shared/api_client/dio/dio_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final studentsRepoProvider = Provider.autoDispose<IStudentsRepository>(
  (ref) {
    return StudentsRepository(dio: ref.watch(dioProvider));
  },
);
