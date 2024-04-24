import 'package:college_buddy_admin/const/app_urls.dart';
import 'package:college_buddy_admin/data/models/library_details_model.dart';

import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_library_repository.dart';

class LibraryRepository implements ILibraryRepository {
  final Dio dio;

  LibraryRepository({required this.dio});
  @override
  Future<Result<AllLibraryModel, APIException>> getAllLibrary(
      {required CancelToken cancelToken}) async {
    final result = await dio.get(AppUrls.libraryApiUrl, cancelToken: cancelToken);
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(AllLibraryModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }
}
