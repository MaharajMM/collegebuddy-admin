import 'package:college_buddy_admin/features/add_notice/controller/notifier/add_notice_notifier.dart';
import 'package:college_buddy_admin/features/add_notice/state/add_notice_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addNoticeFormProvider =
    AsyncNotifierProvider.autoDispose<AddNoticeFormNotifier, AddNoticeFormState>(
  AddNoticeFormNotifier.new,
);
