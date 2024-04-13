import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/features/admin/view/widgets/side_menu_bar.dart';
import 'package:college_buddy_admin/features/home/const/home_keys.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final menuData = SideMenuData();
    return Container(
      color: Colors.pink[50]!.withOpacity(0.2),
      child: Column(
        children: [
          const AppSmallText(
            text: 'CollegeBuddy',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ).pOnly(top: 40),
          ListView.builder(
            shrinkWrap: true,
            itemCount: menuData.menu.length,
            itemBuilder: (context, index) {
              return buildMenuEntry(menuData, index);
            },
          ).pSymmetric(v: 40, h: 20),
        ],
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = HomeKeys.selectedIndex == index;
    return Container(
      margin: AppPadding.kQuatVertical,
      padding: AppPadding.kQuatVertical,
      decoration: BoxDecoration(
        borderRadius: AppBorder.kQuatCurve,
        color: isSelected ? AppColors.purple50 : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          HomeKeys.selectedIndex = index;
          if (data.menu[index].label == 'Settings') {
            context.navigateTo(const SettingsRoute());
          }
        }),
        child: Row(
          children: [
            Icon(
              data.menu[index].icon,
              color: isSelected ? AppColors.purple500 : AppColors.grey500,
            ).pSymmetric(h: 13, v: 7),
            AppSmallText(
              text: data.menu[index].label,
              fontSize: 16,
              color: isSelected ? AppColors.purple500 : AppColors.grey500,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
