import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/add_notice/controller/add_notice_pod.dart';
import 'package:college_buddy_admin/features/add_notice/view/widgets/add_notice_button.dart';
import 'package:college_buddy_admin/features/notice/controller/notice_pod.dart';
import 'package:college_buddy_admin/features/notice_form/const/notice_form_keys.dart';
import 'package:college_buddy_admin/features/notice_form/view/notice_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class AddNoticePage extends StatelessWidget {
  const AddNoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddNoticeView();
  }
}

class AddNoticeView extends ConsumerStatefulWidget {
  const AddNoticeView({super.key});

  @override
  ConsumerState<AddNoticeView> createState() => _AddNoticeViewState();
}

class _AddNoticeViewState extends ConsumerState<AddNoticeView> {
  final _addNoticeFormKey = GlobalKey<FormBuilderState>();

  void submit() {
    if (_addNoticeFormKey.currentState?.saveAndValidate() ?? false) {
      HapticFeedback.lightImpact();
      Feedback.forTap(context);
      final fields = _addNoticeFormKey.currentState!.fields;
      final title = fields[NoticeFormKeys.title]!.value as String;
      final downloadUrl = fields[NoticeFormKeys.downloadUrl]!.value as String;
      final date = fields[NoticeFormKeys.date]!.value as String;

      ref.read(addNoticeFormProvider.notifier).addNotice(
            title: title,
            downloadUrl: downloadUrl,
            date: date,
            onAddNotice: () {
              context.showToast(msg: 'success');
              ref.invalidate(noticesProvider);
              context.router.maybePop();
            },
          );
    } else {
      context.showToast(msg: 'Please fill all the fields');
      // return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.green500,
        title: const AppSmallText(
          text: 'Add Notice',
          fontSize: 24,
          color: AppColors.grey200,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context.maybePop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey200,
          ),
        ),
      ),
      body: SafeArea(
        child: FormBuilder(
          key: _addNoticeFormKey,
          initialValue: const {},
          child: NoticeFormView(
            formKey: _addNoticeFormKey,
            actionButton: AddNoticeButton(onSubmit: submit),
            isEditMode: false,
          ),
        ).scrollVertical().p(16),
      ),
    );
  }
}
