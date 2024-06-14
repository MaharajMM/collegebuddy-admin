import 'package:college_buddy_admin/features/library/widgets/primary_library.dart';
import 'package:college_buddy_admin/features/notice/widgets/primary_notice_body.dart';
import 'package:flutter/material.dart';

class NoticeBody extends StatelessWidget {
  const NoticeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LibraryHeader(),
        PrimaryNoticeBody(),
      ],
    );
  }
}
