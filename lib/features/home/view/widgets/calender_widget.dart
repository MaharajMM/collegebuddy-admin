import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/features/home/view/widgets/activity_details_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final focusedDay = DateTime.now();
    return CustomCardWidget(
      color: AppColors.green100.withOpacity(0.4),
      padding: AppPadding.kHalfPad,
      child: TableCalendar(
        daysOfWeekVisible: true,
        rowHeight: 40,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: GoogleFonts.poppins(
            color: AppColors.kBlack,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          leftChevronIcon: const Icon(
            Icons.chevron_left,
            color: AppColors.kBlack,
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right,
            color: AppColors.kBlack,
          ),
        ),
        // currentDay: DateTime.now(),
        calendarFormat: CalendarFormat.month,
        daysOfWeekHeight: 30,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: GoogleFonts.poppins(
            color: AppColors.kBlack,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          weekendStyle: GoogleFonts.poppins(
            color: AppColors.kBlack,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        calendarStyle: CalendarStyle(
          weekendTextStyle: GoogleFonts.poppins(
            color: AppColors.kBlack,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          todayDecoration: const BoxDecoration(
            color: AppColors.green500,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: GoogleFonts.poppins(
            color: AppColors.kBlack,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          todayTextStyle: GoogleFonts.poppins(
            color: AppColors.kPrimaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          defaultTextStyle: GoogleFonts.poppins(
            color: AppColors.kBlack,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        focusedDay: focusedDay,
        firstDay: DateTime.utc(2009, 01, 01),
        lastDay: DateTime.utc(20030, 01, 01),
      ),
    );
  }
}
