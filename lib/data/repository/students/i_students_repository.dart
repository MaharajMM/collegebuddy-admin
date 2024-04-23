import 'package:college_buddy_admin/data/models/students_model.dart';
import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class IStudentsRepository {
  Future<Result<StudentsModel, APIException>> getAllStudents({
    required CancelToken cancelToken,
  });

  Future<Result<AddStudentModel, APIException>> addStudent({
    required CancelToken cancelToken,
    required String name,
    required String email,
    required String password,
    required String regdNo,
    required int rollNo,
    required int phone,
    required String session,
    required String branch,
    required String dob,
  });
}
