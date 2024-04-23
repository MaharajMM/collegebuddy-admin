import 'package:college_buddy_admin/data/models/notice/all_notice_model.dart';
import 'package:college_buddy_admin/shared/exception/base_exception.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class INoticeRepository {
  Future<Result<AllNoticeModel, APIException>> getAllNotices({
    required CancelToken cancelToken,
  });
}
