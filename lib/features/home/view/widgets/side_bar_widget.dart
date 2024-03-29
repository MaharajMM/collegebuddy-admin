import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:velocity_x/velocity_x.dart';

class SideBarWidget extends StatelessWidget {
  final SidebarXController _controller;
  const SideBarWidget({
    super.key,
    required SidebarXController controller,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    SideMenuData sideMenuData = SideMenuData();
    List<SidebarXItem> sidebarItems = sideMenuData.menu
        .map((menuModel) => SidebarXItem(icon: menuModel.icon, label: menuModel.label))
        .toList();
    return SidebarX(
      // extendedTheme: const SidebarXTheme(width: 300),
      controller: _controller,
      theme: SidebarXTheme(
        decoration: BoxDecoration(
          color: AppColors.green100.withOpacity(0.1),
        ),
        textStyle: GoogleFonts.poppins(
          color: AppColors.grey500,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: AppBorder.kQuatCurve,
          color: AppColors.green100.withOpacity(0.4),
        ),
        itemDecoration: BoxDecoration(
          borderRadius: AppBorder.kQuatCurve,
          color: Colors.transparent,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.grey500,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.green500,
        ),
        selectedTextStyle: GoogleFonts.poppins(
          color: AppColors.green500,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        // itemPadding: const EdgeInsets.symmetric(vertical: 5),
        // selectedItemPadding: const EdgeInsets.symmetric(vertical: 5),
        itemMargin: const EdgeInsets.symmetric(horizontal: 12),
        selectedItemMargin: const EdgeInsets.symmetric(horizontal: 12),
        itemTextPadding: const EdgeInsets.symmetric(horizontal: 20),
        selectedItemTextPadding: const EdgeInsets.symmetric(horizontal: 20),
        hoverColor: Colors.pink[50]!.withOpacity(0.2),
        hoverTextStyle: GoogleFonts.poppins(
          color: AppColors.grey500,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),

      footerDivider: Divider(color: Colors.white.withOpacity(0.8), height: 1),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: const AppSmallText(
            text: 'CollegeBuddy',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ).pSymmetric(v: 25),
        );
      },
      items: sidebarItems,
      showToggleButton: false,
    );
  }
}
