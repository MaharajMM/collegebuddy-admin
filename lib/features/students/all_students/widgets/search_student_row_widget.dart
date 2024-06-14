import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchStudentRowWidget extends StatefulWidget {
  final Function(String?, String?, String?) onSearch;
  const SearchStudentRowWidget({
    super.key,
    required this.onSearch,
  });

  @override
  State<SearchStudentRowWidget> createState() => _SearchStudentRowWidgetState();
}

class _SearchStudentRowWidgetState extends State<SearchStudentRowWidget> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController regdNoController = TextEditingController();

  final TextEditingController rollNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 4,
          child: Row(
            children: [
              Flexible(
                child: CustomTextFormField(
                  onChanged: (p0) {
                    final name = nameController.text.isNotEmpty ? nameController.text : null;
                    final regdNo = regdNoController.text.isNotEmpty ? regdNoController.text : null;
                    final year = rollNoController.text.isNotEmpty ? rollNoController.text : null;
                    widget.onSearch(name, regdNo, year);
                  },
                  name: 'name',
                  controller: nameController,
                  hintText: 'Search by name',
                ),
              ),
              8.widthBox,
              Flexible(
                child: CustomTextFormField(
                  onChanged: (p0) {
                    final name = nameController.text.isNotEmpty ? nameController.text : null;
                    final regdNo = regdNoController.text.isNotEmpty ? regdNoController.text : null;
                    final year = rollNoController.text.isNotEmpty ? rollNoController.text : null;
                    widget.onSearch(name, regdNo, year);
                  },
                  name: 'regd-no',
                  controller: regdNoController,
                  hintText: 'Search by Regd. No',
                ),
              ),
              8.widthBox,
              Flexible(
                child: CustomTextFormField(
                  onChanged: (p0) {
                    final name = nameController.text.isNotEmpty ? nameController.text : null;
                    final regdNo = regdNoController.text.isNotEmpty ? regdNoController.text : null;
                    final year = rollNoController.text.isNotEmpty ? rollNoController.text : null;
                    widget.onSearch(name, regdNo, year);
                  },
                  name: 'roll-no',
                  controller: rollNoController,
                  hintText: 'Search by Roll no.',
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
            onPressed: () {
              final name = nameController.text.isNotEmpty ? nameController.text : null;
              final regdNo = regdNoController.text.isNotEmpty ? regdNoController.text : null;
              final year = rollNoController.text.isNotEmpty ? rollNoController.text : null;
              widget.onSearch(name, regdNo, year);
            },
          ),
        ),
      ],
    );
  }
}
