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
}
