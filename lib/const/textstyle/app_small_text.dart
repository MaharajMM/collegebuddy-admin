//this is the textstyle of subtitle1
//! Don't use font sizes less than 16 because it is the least size visible to a user in a UI

import 'package:auto_size_text/auto_size_text.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSmallText extends StatelessWidget {
  final String text;
  final Color color;
  final Color secondaryColor;
  final FontWeight fontWeight;
  final double? letterSpacing;
  final double fontSize;
  final TextAlign textAlign;
  final bool isStrikeThrough;
  final double? decorationThickness;
  final double? height;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final TextDecoration? decoration;
  final bool isSecondaryFont;
  final int? maxlines;

  final TextOverflow overflow;
  const AppSmallText({
    super.key,
    required this.text,
    this.color = AppColors.kBlack,
    this.secondaryColor = AppColors.green300,
    this.fontWeight = FontWeight.w500,
    this.letterSpacing = 0.3,
    this.fontSize = 14,
    this.textAlign = TextAlign.center,
    this.isStrikeThrough = false,
    this.decorationThickness = 0.5,
    this.height = 1.3,
    this.decorationColor,
    this.decorationStyle,
    this.decoration,
    this.isSecondaryFont = false,
    this.maxlines,
    this.overflow = TextOverflow.clip,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: isSecondaryFont
          ? GoogleFonts.quicksand(
              fontWeight: FontWeight.w600,
              fontSize: fontSize,
              color: secondaryColor,
            )
          : GoogleFonts.poppins(
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
              height: height,
              decoration: isStrikeThrough ? TextDecoration.lineThrough : decoration,
              decorationThickness: decorationThickness,
              decorationColor: decorationColor,
              decorationStyle: decorationStyle,
            ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxlines,
    );
  }
}
