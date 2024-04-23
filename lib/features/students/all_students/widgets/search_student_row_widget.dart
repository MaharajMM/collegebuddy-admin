import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchStudentRowWidget extends StatelessWidget {
  const SearchStudentRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 4,
          child: Row(
            children: [
              const Flexible(
                child: CustomTextFormField(
                  name: '',
                  hintText: 'Search by name',
                ),
              ),
              8.widthBox,
              const Flexible(
                child: CustomTextFormField(
                  name: '',
                  hintText: 'Search by Regd. No',
                ),
              ),
              8.widthBox,
              const Flexible(
                child: CustomTextFormField(
                  name: '',
                  hintText: 'Search by Year',
                ),
              ),
            ],
          ),
        ),
        50.widthBox,
        Flexible(
          child: AppPrimaryButton(
            borderRadius: BorderRadius.circular(10),
            isIcon: true,
            icon: const Icon(
              Icons.search_sharp,
              color: AppColors.grey200,
            ),
            labelText: 'Search',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
