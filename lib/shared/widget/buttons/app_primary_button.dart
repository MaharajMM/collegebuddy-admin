import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    super.key,
    this.borderRadius,
    required this.labelText,
    required this.onPressed,
    this.isLoading = false,
    this.color = AppColors.green600,
    this.fontColor = AppColors.kBlack,
    this.freeSize = false,
    this.fontSize = 12,
    this.isCTA = false,
    this.icon = const Icon(Icons.download_rounded),
    this.isIcon = false,
    this.isButtonActive,
    this.size = const Size(0, 0),
    this.fontWeight = FontWeight.w800,
  });
  final BorderRadiusGeometry? borderRadius;
  final String labelText;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? color;
  final Color fontColor;
  final bool freeSize;
  final bool isCTA;
  final Widget? icon;
  final bool isIcon;
  final double fontSize;
  final bool? isButtonActive;
  final Size size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return isIcon
        ? ElevatedButton.icon(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? AppBorder.kFullMiddleCurve,
              ),
              backgroundColor: color,
              minimumSize: freeSize ? size : const Size(double.infinity, 55),
            ),
            icon: icon!,
            label: AppSmallText(
              text: labelText.toUpperCase(),
              fontWeight: fontWeight,
              color: fontColor,
            ),
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shape: isCTA
                  ? RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColors.kPrimaryThemeColor.withOpacity(0.5),
                        width: 1.5,
                      ),
                      borderRadius: borderRadius ?? AppBorder.kFullMiddleCurve,
                    )
                  : RoundedRectangleBorder(
                      borderRadius: borderRadius ?? AppBorder.kFullMiddleCurve,
                    ),
              backgroundColor: color,
              minimumSize: freeSize ? size : const Size(double.infinity, 55),
            ),
            child: <Widget>[
              if (isLoading) const CupertinoActivityIndicator(),
              AppSmallText(
                text: labelText.toUpperCase(),
                color: fontColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ).pOnly(left: 5),
            ].hStack(alignment: MainAxisAlignment.center),
          );
  }
}
