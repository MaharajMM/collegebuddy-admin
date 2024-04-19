import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/sub-screen/dashboard_widget.dart';
import 'package:college_buddy_admin/shared/widget/cache_image_network_widget.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardView();
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      appBar: AppBar(
        title: const Text('Dashboard'),
        toolbarHeight: 100,
        backgroundColor: AppColors.green100,
        actions: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextFormField(
                  prefixIcon: const Icon(Icons.search),
                  isFillColor: true,
                  fillColor: AppColors.grey100.withOpacity(0.4),
                  hintText: 'Search',
                  name: 'search',
                ).w(300),
                10.widthBox,
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.grey100.withOpacity(0.4),
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: AppColors.kprimaryBlack,
                    size: 33,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.grey100.withOpacity(0.4),
                  child: const Icon(
                    Icons.mark_email_unread_outlined,
                    color: AppColors.kprimaryBlack,
                    size: 30,
                  ),
                ).pSymmetric(h: 10),
                Container(
                  padding: AppPadding.kHalfPad,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.grey100.withOpacity(0.4),
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: const CacheNetworkImageWidget(
                          imageUrl:
                              'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg',
                          fit: BoxFit.cover,
                        ).h(40).w(40),
                      ),
                      10.widthBox,
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppSmallText(
                              text: 'Maharaj M M', fontWeight: FontWeight.bold),
                          AppSmallText(
                            text: 'Admin',
                            fontWeight: FontWeight.normal,
                            color: AppColors.grey500,
                            fontSize: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ).p(4),
              ],
            ).p(15),
          ),
        ],
      ),
      body: const DashBoardWidget(),
    );
  }
}
