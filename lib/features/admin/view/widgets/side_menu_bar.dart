import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/data/models/main_menu_model.dart';
import 'package:college_buddy_admin/features/admin/view/widgets/nav_link_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(
      icon: Icons.space_dashboard_rounded,
      label: 'Dashboard',
      destination: const DashboardRoute(),
    ),
    MenuModel(
      icon: Icons.person,
      label: 'Students',
      destination: const StudentsRoute(),
    ),
    // MenuModel(icon: Icons.local_library_outlined, label: 'Library', destination: const LibraryRoute(),),
    // MenuModel(icon: Icons.account_balance_outlined, label: 'Account'),
    // MenuModel(icon: Icons.photo_filter_sharp, label: 'Attendace'),
    // MenuModel(icon: Icons.file_present_outlined, label: 'Notes'),
    // MenuModel(icon: Icons.file_open_outlined, label: 'Notice'),
    MenuModel(
      icon: Icons.settings,
      label: 'Settings',
      destination: const SettingsRoute(),
    ),
    // MenuModel(icon: Icons.logout, label: 'Logout'),
  ];
}

class SideMenuBar extends StatefulWidget {
  const SideMenuBar({super.key});

  @override
  State<SideMenuBar> createState() => _SideMenuBarState();
}

class _SideMenuBarState extends State<SideMenuBar> {
  int selectedIndex = 0;
  final menuData = SideMenuData();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.green100.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 100,
            child: Center(
              child: AppSmallText(
                text: 'CollegeBuddy',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: menuData.menu.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return NavLink(
                isSelected: selectedIndex == index, // Pass isSelected state
                onPressed: () {
                  setState(() {
                    selectedIndex = index; // Update the selected index
                    context.navigateTo(menuData.menu[index].destination);
                  });
                },
                icon: menuData.menu[index].icon,
                label: menuData.menu[index].label,
              );
            },
          ).pSymmetric(h: 15),
        ],
      ),
    );
  }
}
