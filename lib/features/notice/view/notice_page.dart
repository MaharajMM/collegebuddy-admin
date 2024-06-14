import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/features/notice/widgets/notice_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NoticeView();
  }
}

class NoticeView extends StatefulWidget {
  const NoticeView({super.key});

  @override
  State<NoticeView> createState() => _NoticeViewState();
}

class _NoticeViewState extends State<NoticeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: const NoticeBody(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.navigateTo(const AddNoticeRoute()),
        label: const AppSmallText(
          text: 'Add Notice',
          fontSize: 16,
        ),
        icon: const Icon(Icons.edit),
        elevation: 10,
        backgroundColor: AppColors.green500,
        hoverColor: AppColors.green800,
        splashColor: AppColors.green200,
      ),
    );
  }
}
