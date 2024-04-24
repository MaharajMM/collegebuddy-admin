import 'dart:async';

import 'package:college_buddy_admin/data/repository/notice/notice_repo_pod.dart';
import 'package:college_buddy_admin/features/add_notice/state/add_notice_state.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/cancel_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNoticeFormNotifier extends AutoDisposeAsyncNotifier<AddNoticeFormState> {
  @override
  FutureOr<AddNoticeFormState> build() {
    return const InitialAddNoticeForm();
  }

  Future<void> addNotice({
    CancelToken? cancelToken,
    required String title,
    required String downloadUrl,
    required String date,
    required void Function() onAddNotice,
  }) async {
    state = const AsyncData(AddingNotice());
    state = await AsyncValue.guard(() async {
      final result = await ref.watch(noticeRepoProvider).addNotice(
            title: title,
            downloadUrl: downloadUrl,
            date: date,
            cancelToken: ref.cancelToken(),
          );

      return result.when((addNoticeModel) {
        if (addNoticeModel.notice != null) {
          onAddNotice();
          return const AddNoticeFormSuccess();
        } else {
          return const AddNoticeFormError('Server error');
        }
      }, (error) => AddNoticeFormError(error.errorMessage));
    });
  }
}
