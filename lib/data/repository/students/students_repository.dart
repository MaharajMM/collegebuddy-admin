import 'package:college_buddy_admin/const/app_urls.dart';
import 'package:college_buddy_admin/data/models/students_model.dart';
import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_students_repository.dart';

class StudentsRepository implements IStudentsRepository {
  final Dio dio;

  StudentsRepository({required this.dio});
  @override
  Future<Result<StudentsModel, APIException>> getAllStudents(
      {required CancelToken cancelToken}) async {
    final result = await dio.get(AppUrls.studentApiURL, cancelToken: cancelToken);
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(StudentsModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }

  @override
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
  }) async {
    final data = {
      "name": name,
      "email": email,
      "password": password,
      "rollNo": rollNo,
      "registrationNo": regdNo,
      "phoneNo": phone,
      "session": session,
      "branch": branch,
      "dob": dob,
      "profilePicture": "",
    };
    final result = await dio.post(
      AppUrls.addstudentURL,
      cancelToken: cancelToken,
      data: data,
    );
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(AddStudentModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }
}
