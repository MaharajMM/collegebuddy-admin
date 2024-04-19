import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularBooksList extends StatelessWidget {
  const PopularBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          primary: false,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.green100.withOpacity(0.4),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: AppColors.green100, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.grey100.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Placeholder(),
                  ).h(180).w(180),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSmallText(
                        text: 'Book Name: ',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      AppSmallText(
                        text: 'Author Name: ',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSmallText(
                        text: 'Edition: ',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSmallText(
                        text: 'Global ratings: ',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ).p12(),
            );
          }).p12(),
    );
  }
}
