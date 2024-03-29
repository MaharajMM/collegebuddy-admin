import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/shared/utils/responsive.dart';
import 'package:college_buddy_admin/shared/widget/cache_image_network_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (!Responsive.isDesktop(context))
                InkWell(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: const Icon(
                    Icons.menu,
                    color: AppColors.grey400,
                    size: 25,
                  ).p(4),
                ).pOnly(right: 20),
              if (!Responsive.isMobile(context))
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.green100.withOpacity(0.4),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColors.kyellow1, width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColors.kErrorColor, width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColors.kErrorColor, width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: AppPadding.kHalfPad,
                      hintText: 'Search anything here',
                      hintStyle: GoogleFonts.poppins(
                        color: AppColors.grey500,
                        fontSize: 16,
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: AppColors.green500,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              if (Responsive.isMobile(context))
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ).p(4),
                    GestureDetector(
                      onTap: () => Scaffold.of(context).openEndDrawer(),
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.cardBackgroundColor,
                        child: Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ).p(4),
                    ),
                  ],
                ),
            ],
          ).p(15),
        ),
        if (isDesktop)
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.green100.withOpacity(0.4),
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: AppColors.kprimaryBlack,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.green100.withOpacity(0.4),
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
                    color: AppColors.green100.withOpacity(0.4),
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
                          AppSmallText(text: 'Maharaj M M', fontWeight: FontWeight.bold),
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
    );
  }
}
