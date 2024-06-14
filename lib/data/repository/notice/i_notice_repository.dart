import 'package:college_buddy_admin/data/models/notice/all_notice_model.dart';
import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class INoticeRepository {
  Future<Result<AllNoticeModel, APIException>> getAllNotices({
    required CancelToken cancelToken,
  });

  Future<Result<AddNoticeModel, APIException>> addNotice({
    required CancelToken cancelToken,
    required String title,
    required String downloadUrl,
    required String date,
  });

  Future<Result<AddNoticeModel, APIException>> editNotice({
    required CancelToken cancelToken,
    required String noticeId,
    String? title,
    String? downloadUrl,
    String? date,
  });
}
