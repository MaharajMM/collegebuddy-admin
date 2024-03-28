import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownButtonField extends StatefulWidget {
  final String name;
  final String? initialValue;
  final String hintText;
  final List<String> dropDownItem;
  final Widget? prefixIcon;
  const DropDownButtonField({
    super.key,
    required this.name,
    this.initialValue,
    required this.hintText,
    required this.dropDownItem,
    this.prefixIcon,
  });

  @override
  State<DropDownButtonField> createState() => _DropDownButtonFieldState();
}

class _DropDownButtonFieldState extends State<DropDownButtonField> {
  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<String>(
      isExpanded: false,
      name: widget.name,
      initialValue: widget.initialValue,
      validator: FormBuilderValidators.required(),
      alignment: Alignment.centerLeft,
      items: widget.dropDownItem
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
      style: GoogleFonts.ubuntu(
        fontSize: 16,
        color: AppColors.grey800,
        fontWeight: FontWeight.w500,
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        size: 30,
        color: AppColors.kPrimaryButtonColor,
      ),
      dropdownColor: AppColors.green200,
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hintText,
        labelText: widget.hintText,
        labelStyle: GoogleFonts.ubuntu(
          fontSize: 14,
          color: AppColors.green200,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: GoogleFonts.ubuntu(
          fontSize: 16,
          color: AppColors.grey400.withOpacity(0.5),
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: widget.prefixIcon,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey400,
            width: 0.7,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.kPrimaryButtonColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
