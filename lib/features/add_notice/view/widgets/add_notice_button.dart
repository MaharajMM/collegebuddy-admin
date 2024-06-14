import 'package:college_buddy_admin/features/add_notice/controller/add_notice_pod.dart';
import 'package:college_buddy_admin/features/add_notice/state/add_notice_state.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNoticeButton extends ConsumerWidget {
  final VoidCallback onSubmit;
  const AddNoticeButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addNoticeFormAsync = ref.watch(addNoticeFormProvider);

    return addNoticeFormAsync.easyWhen(
      data: (addNoticeFormState) {
        return switch (addNoticeFormState) {
          InitialAddNoticeForm() => AppPrimaryButton(
              labelText: 'Add Notice',
              onPressed: onSubmit,
            ),
          AddingNotice() => const AppPrimaryButton(
              labelText: 'Adding',
              onPressed: null,
              isLoading: true,
            ),
          AddNoticeFormSuccess() => AppPrimaryButton(
              labelText: 'Added',
              onPressed: () {},
            ),
          AddNoticeFormError() => AppPrimaryButton(
              labelText: 'Retry',
              onPressed: onSubmit,
            ),
        };
      },
    );
  }
}
