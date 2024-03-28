import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AppSecondaryButton extends StatefulWidget {
  const AppSecondaryButton({
    super.key,
    this.borderRadius,
    required this.labelText,
    required this.onPressed,
    this.color = AppColors.kSecondaryTextColor,
    this.borderColor = AppColors.kPrimaryThemeColor,
    this.icon = const Icon(Icons.download_rounded),
    this.isColor = true,
    this.isIcon = false,
    this.padding,
    this.freeSize = true,
    this.fontColor = AppColors.grey200,
    this.fontWeight = FontWeight.bold,
  });
  final BorderRadiusGeometry? borderRadius;
  final String labelText;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color? color;
  final Color? fontColor;
  final Widget? icon;
  final bool isIcon;
  final bool isColor;
  final bool freeSize;
  final EdgeInsetsGeometry? padding;
  final FontWeight fontWeight;

  @override
  State<AppSecondaryButton> createState() => _AppSecondaryButtonState();
}

class _AppSecondaryButtonState extends State<AppSecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return widget.isIcon
        ? TextButton.icon(
            onPressed: widget.onPressed,
            style: TextButton.styleFrom(
              padding: widget.padding ?? AppPadding.kHalfMiddleHorizontal,
              shape: RoundedRectangleBorder(
                borderRadius: widget.borderRadius ?? AppBorder.kFullMiddleCurve,
                side: BorderSide(
                  color: widget.borderColor.withOpacity(0.7),
                  width: 1.5,
                ),
              ),
              backgroundColor: widget.isColor ? widget.color : Colors.transparent,
              iconColor: AppColors.kSecondaryBgColor,
              minimumSize: widget.freeSize ? null : const Size(double.infinity, 55),
            ),
            icon: widget.icon!,
            label: AppSmallText(
              text: widget.labelText,
              fontSize: 4,
              fontWeight: widget.fontWeight,
            ),
          )
        : TextButton(
            onPressed: widget.onPressed,
            style: TextButton.styleFrom(
              padding: widget.padding ?? AppPadding.kHalfMiddleHorizontal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: widget.borderColor.withOpacity(0.7), width: 1.5),
              ),
              backgroundColor: widget.color,
              minimumSize: widget.freeSize ? null : const Size(double.infinity, 55),
            ),
            child: widget.labelText.text
                .textStyle(GoogleFonts.ubuntu(
                  fontSize: 4,
                  fontWeight: FontWeight.bold,
                  color: widget.fontColor,
                ))
                .make());
  }
}
