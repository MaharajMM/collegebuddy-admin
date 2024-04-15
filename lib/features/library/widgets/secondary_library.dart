import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/library/widgets/monthly_status_widget.dart';
import 'package:college_buddy_admin/features/library/widgets/total_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SecondaryLibraryBody extends StatelessWidget {
  const SecondaryLibraryBody({
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
                    text: 'Library',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  AppSmallText(text: 'do find the library stats here..')
                ],
              ).pOnly(bottom: 20),
              Flexible(
                child: Row(
                  children: [
                    const TotalSummaryCard().h(500).w(1000),
                    20.widthBox,
                    const MonthlySummaryCard().h(400).w(300),
                  ],
                ),
              ),
              20.heightBox,
              Row(
                children: [
                  const PopularBooksCard().w(1050).h(400),
                  20.widthBox,
                  const MostBorrowedBooks().h(400).w(300),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MostBorrowedBooks extends StatelessWidget {
  const MostBorrowedBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.grey300, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppSmallText(
            textAlign: TextAlign.start,
            text: 'Most Borrowed Books Category',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ).p16(),
          //*  SHOWS THE POPULAR BOOKS OF THE LIBRARY
        ],
      ),
      //Height should be removed after adding the full content
    );
  }
}

class PopularBooksCard extends StatelessWidget {
  const PopularBooksCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.grey300, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppSmallText(
            text: 'Popular Books',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ).p16(),
          //*  SHOWS THE POPULAR BOOKS OF THE LIBRARY
        ],
      ),
      //Height should be removed after adding the full content
    );
  }
}
