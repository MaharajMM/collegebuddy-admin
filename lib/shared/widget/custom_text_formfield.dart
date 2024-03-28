import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.sufixIcon,
    this.isReadOnly = false,
    this.validator,
    required this.hintText,
    this.keyboardType,
    this.onTap,
    this.focusNode,
    this.onChanged,
    required this.name,
    this.textInputAction,
    this.controller,
    this.initialValue,
    this.minLine,
    this.maxLine,
    this.fillColor = AppColors.green100,
    this.enableBorderColor = AppColors.grey800,
    this.focusedBorderColor = AppColors.grey800,
    this.fontColor = AppColors.green600,
    this.fontSize = 16,
    this.letterSpacing = 0.3,
    this.isErrorText = false,
    this.isFillColor = false,
    this.isObscureText = false,
  });

  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final bool isReadOnly;
  final bool? isErrorText;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final Function(String?)? onChanged;
  final String name;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? initialValue;
  final int? minLine;
  final int? maxLine;
  final Color? fillColor;
  final Color enableBorderColor;
  final Color focusedBorderColor;
  final Color? fontColor;
  final double fontSize;
  final double? letterSpacing;
  final bool? isFillColor;
  final bool isObscureText;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      obscureText: isObscureText,
      controller: controller,
      name: name,
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: isReadOnly,
      style: GoogleFonts.ubuntu(
        fontSize: fontSize,
        color: isFillColor == false ? fontColor : AppColors.green400,
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.w500,
      ),
      enableSuggestions: true,
      minLines: minLine,
      maxLines: maxLine,
      focusNode: focusNode,
      keyboardType: keyboardType,
      validator: validator,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: sufixIcon,
        labelText: isFillColor == false ? hintText : null,
        labelStyle: isFillColor == false
            ? GoogleFonts.ubuntu(
                fontSize: 16,
                color: AppColors.kBlack,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
              )
            : null,
        // alignLabelWithHint: true,
        filled: isFillColor,
        fillColor: fillColor,
        hintStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.green200,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: isErrorText! ? const TextStyle(color: AppColors.green300) : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isFillColor == false ? enableBorderColor : Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isFillColor == false ? focusedBorderColor : Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.kErrorColor, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.kErrorColor, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
