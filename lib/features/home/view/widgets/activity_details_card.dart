import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/data/models/health_model.dart';
import 'package:college_buddy_admin/shared/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HealthDetails {
  final healthData = <HealthModel>[
    HealthModel(
      icon: Icons.dashboard,
      title: 'Dashboard',
      value: '305',
      color: AppColors.kPrimaryBgColor.withOpacity(0.1),
    ),
    HealthModel(
      icon: Icons.people,
      title: 'Profile',
      value: '10,983',
      color: AppColors.kyellow1.withOpacity(0.1),
    ),
    // HealthModel(icon: Icons.history, title: 'History', value: '7km'),
    // HealthModel(icon: Icons.logout, title: 'Logout', value: '7h48m'),
  ];
}

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      shrinkWrap: true,
      // physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        childAspectRatio: 2.0, // Adjust aspect ratio as needed
        mainAxisExtent: 100.0,
        mainAxisSpacing: 12,
      ),
      itemCount: healthDetails.healthData.length,
      itemBuilder: (context, index) {
        final data = healthDetails.healthData[index];
        return CustomCardWidget(
          color: data.color,
          padding: AppPadding.kSingleHorizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSmallText(
                    text: index == 0 ? 'Students' : 'Teachers',
                    color: AppColors.grey400,
                  ).pOnly(bottom: 5),
                  AppSmallText(
                    text: index == 0 ? '2.25K' : '90',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              const Icon(
                Icons.people,
                size: 40,
                color: AppColors.purple500,
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCardWidget({
    super.key,
    required this.child,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
