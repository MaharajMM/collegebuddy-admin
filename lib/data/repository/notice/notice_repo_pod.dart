import 'package:college_buddy_admin/data/repository/notice/i_notice_repository.dart';
import 'package:college_buddy_admin/data/repository/notice/notice_repository.dart';
import 'package:college_buddy_admin/shared/api_client/dio/dio_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final noticeRepoProvider = Provider.autoDispose<INoticeRepository>(
  (ref) {
    return NoticeRepository(dio: ref.watch(dioProvider));
  },
);
