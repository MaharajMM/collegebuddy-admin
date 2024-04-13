import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/features/admin/view/widgets/side_menu_bar.dart';
import 'package:college_buddy_admin/features/home/view/widgets/summary_widget.dart';
import 'package:college_buddy_admin/shared/utils/responsive.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdminView();
  }
}

class AdminView extends StatefulWidget {
  const AdminView({super.key});

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      drawer: !isDesktop
          ? const Drawer(
              child: SideMenuBar(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? Drawer(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isDesktop ? const Expanded(flex: 1, child: SideMenuBar()) : Container(),
          const Expanded(
            flex: 6,
            // nested routes will be rendered here
            child: AutoRouter(),
          ),
        ],
      ),
    );
  }
}
