import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/features/library/view/book-request/widgets/status_badge.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BookRequestStatus extends StatelessWidget {
  const BookRequestStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const StatusBadge(
          statusTittle: 'Pending Requests',
          badgeColor: AppColors.kErrorColor,
          badgeIcon: Icons.pending_actions,
          statusCount: 12,
        ),
        20.widthBox,
        const StatusBadge(
          statusTittle: 'Verified Requests',
          badgeColor: AppColors.green500,
          badgeIcon: Icons.done_all_rounded,
          statusCount: 10,
        ),
      ],
    );
  }
}
