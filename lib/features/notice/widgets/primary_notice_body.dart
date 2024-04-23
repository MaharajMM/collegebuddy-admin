import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/notice/view/widget/notice_data_table.dart';
import 'package:college_buddy_admin/features/notice/view/widget/search_notice_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PrimaryNoticeBody extends StatelessWidget {
  const PrimaryNoticeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.kQuatHalfPad,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSmallText(
                    text: 'Notice',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  AppSmallText(text: 'do find all the Notice here..')
                ],
              ),
              20.heightBox,
              const SearchNoticeWidget(),
              20.heightBox,
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: AppColors.grey300, width: 2),
                    ),
                    child: const NoticeDataTable(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LibraryTittle extends StatelessWidget {
  const LibraryTittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSmallText(
          text: 'Library',
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        AppSmallText(text: 'do find the library stats here..')
      ],
    );
  }
}
