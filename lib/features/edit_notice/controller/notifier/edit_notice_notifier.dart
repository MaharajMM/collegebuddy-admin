import 'dart:async';

import 'package:college_buddy_admin/data/repository/notice/notice_repo_pod.dart';
import 'package:college_buddy_admin/features/add_notice/state/add_notice_state.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/cancel_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditNoticeFormNotifier extends AutoDisposeAsyncNotifier<AddNoticeFormState> {
  @override
  FutureOr<AddNoticeFormState> build() {
    return const InitialAddNoticeForm();
  }

  Future<void> editNotice({
    CancelToken? cancelToken,
    required String noticeId,
    String? title,
    String? downloadUrl,
    String? date,
    required void Function() onEditNotice,
  }) async {
    state = const AsyncData(AddingNotice());
    state = await AsyncValue.guard(() async {
      final result = await ref.watch(noticeRepoProvider).editNotice(
            noticeId: noticeId,
            title: title,
            downloadUrl: downloadUrl,
            date: date,
            cancelToken: ref.cancelToken(),
          );

      return result.when((addNoticeModel) {
        if (addNoticeModel.notice != null) {
          onEditNotice();
          return const AddNoticeFormSuccess();
        } else {
          return const AddNoticeFormError('Server error');
        }
      }, (error) => AddNoticeFormError(error.errorMessage));
    });
  }
}
