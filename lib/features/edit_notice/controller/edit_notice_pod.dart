import 'package:college_buddy_admin/features/add_notice/state/add_notice_state.dart';
import 'package:college_buddy_admin/features/edit_notice/controller/notifier/edit_notice_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final editNoticeFormProvider =
    AsyncNotifierProvider.autoDispose<EditNoticeFormNotifier, AddNoticeFormState>(
  EditNoticeFormNotifier.new,
);
