import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NavLink extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  const NavLink({
    super.key,
    required this.isSelected,
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor:
              isSelected ? null : AppColors.green100.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: AppBorder.kQuatCurve,
          ),
          surfaceTintColor: AppColors.green500,
          alignment: Alignment.centerLeft,
          shadowColor: AppColors.green500,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.green500 : AppColors.kBlack,
            ),
            7.widthBox,
            AppSmallText(
              text: label,
              fontSize: 16,
              color: isSelected ? AppColors.green500 : AppColors.kBlack,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
          ],
        ).pSymmetric(v: 8),
      ),
    );
  }
}
