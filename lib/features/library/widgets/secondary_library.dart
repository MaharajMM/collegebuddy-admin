import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/library/widgets/library_tabs_widget.dart';
import 'package:college_buddy_admin/features/library/widgets/monthly_status_widget.dart';
import 'package:college_buddy_admin/features/library/widgets/popular_books.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LibraryTittle().pOnly(bottom: 20),
                  const LibraryTabs().pOnly(bottom: 20, right: 30),
                ],
              ),
              Flexible(
                child: Row(
                  children: [
                    const PopularBooksCard().w(1050).h(500),
                    20.widthBox,
                    const MonthlySummaryCard().h(500).w(400),
                  ],
                ),
              ),
              20.heightBox,
              // Row(
              //   children: [
              //     20.widthBox,
              //     const MostBorrowedBooks().h(400).w(350),
              //   ],
              // ),
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
