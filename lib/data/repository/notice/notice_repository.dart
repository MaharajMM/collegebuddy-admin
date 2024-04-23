import 'package:college_buddy_admin/const/app_urls.dart';
import 'package:college_buddy_admin/data/models/notice/all_notice_model.dart';
import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_notice_repository.dart';

class NoticeRepository implements INoticeRepository {
  final Dio dio;

  NoticeRepository({required this.dio});
  @override
  Future<Result<AllNoticeModel, APIException>> getAllNotices(
      {required CancelToken cancelToken}) async {
    final result = await dio.get(AppUrls.noticeApiURL, cancelToken: cancelToken);
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(AllNoticeModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }

  @override
  Future<Result<AddNoticeModel, APIException>> addNotice({
    required CancelToken cancelToken,
    required String title,
    required String downloadUrl,
    required String date,
  }) async {
    final data = {
      "date": date,
      "title": title,
      "downloadUrl": downloadUrl,
    };
    final result = await dio.post(
      AppUrls.noticeApiURL,
      cancelToken: cancelToken,
      data: data,
    );
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(AddNoticeModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }
}
