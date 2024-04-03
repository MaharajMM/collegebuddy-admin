import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentDOBField extends StatefulWidget {
  const StudentDOBField({super.key});

  @override
  State<StudentDOBField> createState() => _StudentDOBFieldState();
}

class _StudentDOBFieldState extends State<StudentDOBField> {
  final _studentDOBController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: AppSmallText(
            text: 'Student DOB: ',
            fontSize: 18,
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: _studentDOBController,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.green800,
              letterSpacing: 0.3,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Select Date of Birth',
              suffixIcon: const Icon(Icons.calendar_month),
              // alignLabelWithHint: true,
              filled: false,
              fillColor: AppColors.green100,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: AppColors.grey400,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.grey800,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.grey800,
                  width: 1.0,
                ),
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
            ),
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                initialDate: DateTime.now(),
              );
              if (pickedDate != null) {
                setState(() {
                  _studentDOBController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                });
              }
            },
          ),
        )
      ],
    ).pOnly(bottom: 20);
  }
}
