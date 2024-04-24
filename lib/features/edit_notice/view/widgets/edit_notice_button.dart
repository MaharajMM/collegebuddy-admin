import 'package:college_buddy_admin/features/add_notice/state/add_notice_state.dart';
import 'package:college_buddy_admin/features/edit_notice/controller/edit_notice_pod.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditNoticeButton extends ConsumerWidget {
  final VoidCallback onSubmit;
  const EditNoticeButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editNoticeFormAsync = ref.watch(editNoticeFormProvider);

    return editNoticeFormAsync.easyWhen(
      data: (addFoodFormState) {
        return switch (addFoodFormState) {
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
