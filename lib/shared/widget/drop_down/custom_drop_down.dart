import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String hintText;
  final List<String> dropDownItem;
  final Widget? prefixIcon;
  const CustomDropDown({
    super.key,
    required this.hintText,
    required this.dropDownItem,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: dropDownItem
          .map(
            (e) => DropdownMenuItem(
              value: e,
              alignment: Alignment.center,
              child: AppSmallText(
                fontSize: 16,
                text: e,
                color: AppColors.grey200,
              ),
            ),
          )
          .toList(),
      onChanged: (value) {},
      icon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        size: 30,
        color: AppColors.purple500,
      ),
      dropdownColor: AppColors.green800,
    );
  }
}
