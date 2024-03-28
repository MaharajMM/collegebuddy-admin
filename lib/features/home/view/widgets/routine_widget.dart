import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:college_buddy_admin/features/home/view/widgets/count_container.dart';
import 'package:college_buddy_admin/shared/widget/drop_down/drop_down_button_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoutineWidget extends StatelessWidget {
  const RoutineWidget({super.key});

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
                const CountContainer(),
                // Row(
                //   children: [
                //     Container(
                //       height: 300,
                //       decoration: const BoxDecoration(
                //         color: AppColors.kSecondaryBgColor,
                //         borderRadius: BorderRadius.all(Radius.circular(10)),
                //       ),
                //       child: const AppSmallText(
                //         text: 'Center',
                //       ),
                //     ),
                //     Container(
                //       height: 300,
                //       decoration: const BoxDecoration(
                //         color: AppColors.kSecondaryBgColor,
                //         borderRadius: BorderRadius.all(Radius.circular(10)),
                //       ),
                //       child: const AppSmallText(
                //         text: 'Center',
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: CustomCardWidget(
            color: AppColors.green100.withOpacity(0.4),
            child: Container(),
          ),
        ),
      ],
    );
  }
}
