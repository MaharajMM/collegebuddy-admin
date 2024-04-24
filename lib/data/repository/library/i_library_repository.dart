import 'package:college_buddy_admin/data/models/library_details_model.dart';
import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ILibraryRepository {
  Future<Result<AllLibraryModel, APIException>> getAllLibrary({
    required CancelToken cancelToken,
  });
}
