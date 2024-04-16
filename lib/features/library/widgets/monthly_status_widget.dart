import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/library/widgets/new_request_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MonthlySummaryCard extends StatelessWidget {
  const MonthlySummaryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //*  SHOWS THE MONTHLY SUMMARY OF THE LIBRARY AS A TEXT
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.grey300, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppSmallText(
            text: 'Monthly Stats',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ).p16(),
          const NewRequestCard().p12().w(double.maxFinite).h(200),
          const BooksStatus(),
        ],
      ),
    );
  }
}

class BooksStatus extends StatelessWidget {
  const BooksStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const BooksBorrowedStats().p12().w(180).h(200),
        // 20.widthBox,
        const BooksOverDueStats().p12().w(180).h(200),
      ],
    );
  }
}

class BooksBorrowedStats extends StatelessWidget {
  const BooksBorrowedStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.5),
        border: Border.all(color: AppColors.green100, width: 2),
        borderRadius: BorderRadius.circular(12.00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.menu_book_rounded,
                size: 25,
                color: AppColors.grey400,
              ),
              AppSmallText(
                textAlign: TextAlign.start,
                text: 'Books\nBorrowed',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColors.grey400,
              ),
            ],
          ),
          15.heightBox,
          const AppSmallText(
              text: '12', fontSize: 40, fontWeight: FontWeight.bold),
        ],
      ).p12(),
    );
  }
}

class BooksOverDueStats extends StatelessWidget {
  const BooksOverDueStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.green100.withOpacity(0.5),
        border: Border.all(color: AppColors.green100, width: 2),
        borderRadius: BorderRadius.circular(12.00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_month_rounded,
                size: 25,
                color: AppColors.grey400,
              ),
              // 15.widthBox,
              AppSmallText(
                textAlign: TextAlign.start,
                text: 'Books\nOverdue',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColors.grey400,
              ),
            ],
          ),
          15.heightBox,
          const AppSmallText(
              text: '12', fontSize: 40, fontWeight: FontWeight.bold),
        ],
      ).p12(),
    );
  }
}
