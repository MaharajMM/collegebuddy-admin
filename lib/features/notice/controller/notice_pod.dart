import 'package:college_buddy_admin/data/models/notice/all_notice_model.dart';
import 'package:college_buddy_admin/data/repository/notice/notice_repo_pod.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/cancel_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final noticesProvider = FutureProvider.autoDispose<AllNoticeModel>((ref) async {
  final result = await ref.watch(noticeRepoProvider).getAllNotices(cancelToken: ref.cancelToken());
  return result.when((noticeModel) => noticeModel, (error) => throw (error.errorMessage));
});
