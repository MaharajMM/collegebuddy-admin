import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:college_buddy_admin/features/home/view/widgets/attendance_and_exam_widget.dart';
import 'package:college_buddy_admin/features/home/view/widgets/bar_graph_card.dart';
import 'package:college_buddy_admin/features/home/view/widgets/routine_widget.dart';
import 'package:college_buddy_admin/features/home/view/widgets/summary_widget.dart';
import 'package:college_buddy_admin/shared/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DashBoardWidget extends StatefulWidget {
  const DashBoardWidget({super.key});

  @override
  State<DashBoardWidget> createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Column(
      children: [
      
        Flexible(
          child: SingleChildScrollView(
            child: Padding(
              padding: AppPadding.kQuatHalfPad,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppSmallText(
                              text: 'Welcome.',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            AppSmallText(
                                text:
                                    'Nurture the Future of Students with CollegeBuddy.')
                          ],
                        ).pOnly(bottom: 20),
                        const ActivityDetailsCard(),
                        20.heightBox,
                        const RoutineAndLibraryWidget(),
                        20.heightBox,
                        const AttendanceAndExamWidget(),
                        20.heightBox,
                        // const LineChartCard(),
                        const BarGraphCard(),
                        // if (Responsive.isTablet(context)) const SummaryWidget()
                      ],
                    ),
                  ),
                  if (isDesktop)
                    const Expanded(
                      flex: 3,
                      child: SummaryWidget(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
