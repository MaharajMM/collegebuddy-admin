import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/features/home/view/widgets/side_menu_widget.dart';
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

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      drawer: !isDesktop
          ? const Drawer(
              // backgroundColor: AppColors.kBlack,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? Drawer(
              // backgroundColor: AppColors.kBlack,
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: Row(
        children: [
          isDesktop
              ? const Column(
                  children: [
                    NavLink(label: 'DashBoard', destination: DashboardRoute()),
                    NavLink(label: 'Student', destination: StudentsRoute()),
                    NavLink(label: 'Settings', destination: SettingsRoute()),
                  ],
                )
              : Container(),
          const Expanded(
            // nested routes will be rendered here
            child: AutoRouter(),
          ),
        ],
      ),
    );
  }
}

class NavLink extends StatefulWidget {
  final String label;
  final PageRouteInfo<dynamic> destination;
  const NavLink({
    super.key,
    required this.label,
    required this.destination,
  });

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.navigateTo(widget.destination);
      },
      child: AppSmallText(
        text: widget.label,
      ),
    );
  }
}
