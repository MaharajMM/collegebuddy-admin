import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/library/widgets/popular_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

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
          const PopularBooksList(),
        ],
      ),
      //Height should be removed after adding the full content
    );
  }
}

