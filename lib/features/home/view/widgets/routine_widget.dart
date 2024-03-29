import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:college_buddy_admin/features/home/view/widgets/count_container.dart';
import 'package:college_buddy_admin/shared/widget/drop_down/drop_down_button_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoutineAndLibraryWidget extends StatelessWidget {
  const RoutineAndLibraryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: CustomCardWidget(
            padding: AppPadding.kHalfPad,
            color: AppColors.green100.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppSmallText(
                  text: 'Class Routine',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                12.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          const Flexible(
                            child: DropDownButtonField(
                              dropDownItem: ['1', '2', '3'],
                              name: '',
                              hintText: 'Select from day',
                            ),
                          ),
                          8.widthBox,
                          const Flexible(
                            child: DropDownButtonField(
                              dropDownItem: ['1', '2', '3'],
                              name: '',
                              hintText: 'Select from day',
                            ),
                          ),
                          8.widthBox,
                          const Flexible(
                            child: DropDownButtonField(
                              dropDownItem: ['1', '2', '3'],
                              name: '',
                              hintText: 'Select from day',
                            ),
                          ),
                          20.widthBox,
                          const AppSmallText(
                            text: 'View all',
                            color: AppColors.grey400,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                12.heightBox,
                const CountContainer(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: CustomCardWidget(
              color: AppColors.green100.withOpacity(0.4),
              padding: AppPadding.kHalfPad,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSmallText(
                        text: 'Library',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: AppColors.grey400,
                        size: 20,
                      )
                    ],
                  ),
                  12.heightBox,
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        padding: AppPadding.kHalfHorizontal,
                        decoration: BoxDecoration(
                          borderRadius: AppBorder.kHalfCurve,
                          color: AppColors.kSecondaryBgColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.green100.withOpacity(0.4),
                                    borderRadius: AppBorder.kHalfCurve,
                                  ),
                                  child: const Icon(
                                    Icons.calendar_month_sharp,
                                    color: AppColors.green500,
                                    size: 30,
                                  ),
                                ),
                                12.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const AppSmallText(
                                      text: 'CSE',
                                    ).pOnly(bottom: 5),
                                    const AppSmallText(
                                      text: '302 books',
                                      fontSize: 12,
                                      color: AppColors.grey400,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const AppSmallText(
                              text: 'View all',
                              fontSize: 12,
                              color: AppColors.grey400,
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => 12.heightBox,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
