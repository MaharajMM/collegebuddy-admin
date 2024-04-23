import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/data/models/notice/all_notice_model.dart';
import 'package:college_buddy_admin/features/edit_notice/controller/edit_notice_pod.dart';
import 'package:college_buddy_admin/features/edit_notice/view/widgets/edit_notice_button.dart';
import 'package:college_buddy_admin/features/notice/controller/notice_pod.dart';
import 'package:college_buddy_admin/features/notice_form/const/notice_form_keys.dart';
import 'package:college_buddy_admin/features/notice_form/view/notice_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class EditNoticePage extends StatelessWidget {
  final NoticeData notice;
  const EditNoticePage({super.key, required this.notice});

  @override
  Widget build(BuildContext context) {
    return EditNoticeView(notice: notice);
  }
}

class EditNoticeView extends ConsumerStatefulWidget {
  final NoticeData? notice;
  const EditNoticeView({super.key, this.notice});

  @override
  ConsumerState<EditNoticeView> createState() => _EditNoticeViewState();
}

class _EditNoticeViewState extends ConsumerState<EditNoticeView> {
  final _editNoticeFormKey = GlobalKey<FormBuilderState>();

  void submit() {
    if (_editNoticeFormKey.currentState?.saveAndValidate() ?? false) {
      HapticFeedback.lightImpact();
      Feedback.forTap(context);
      final fields = _editNoticeFormKey.currentState!.fields;
      final title = fields[NoticeFormKeys.title]!.value as String;
      final downloadUrl = fields[NoticeFormKeys.downloadUrl]!.value as String;
      final date = fields[NoticeFormKeys.date]!.value as String;

      ref.read(editNoticeFormProvider.notifier).editNotice(
            noticeId: widget.notice!.id!,
            title: title,
            downloadUrl: downloadUrl,
            date: date,
            onEditNotice: () {
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
          text: 'Edit Notice',
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
          key: _editNoticeFormKey,
          initialValue: widget.notice != null
              ? {
                  NoticeFormKeys.title: widget.notice!.title,
                  NoticeFormKeys.downloadUrl: widget.notice!.downloadUrl,
                  NoticeFormKeys.date: widget.notice!.date,
                }
              : {},
          child: NoticeFormView(
            formKey: _editNoticeFormKey,
            actionButton: EditNoticeButton(onSubmit: submit),
            isEditMode: true,
          ),
        ).scrollVertical().p(16),
      ),
    );
  }
}
