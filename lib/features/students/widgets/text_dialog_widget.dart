import 'package:college_buddy_admin/bootstrap.dart';
import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<T?> showTextDialog<T>(
  BuildContext context, {
  required String title,
  required String value,
}) =>
    showDialog<T>(
      context: context,
      builder: (context) => TextDialogWidget(
        title: title,
        value: value,
      ),
    );

class TextDialogWidget extends StatefulWidget {
  final String title;
  final String value;
  const TextDialogWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  State<TextDialogWidget> createState() => _TextDialogWidgetState();
}

class _TextDialogWidgetState extends State<TextDialogWidget> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: AppBorder.kHalfCurve,
        ),
        backgroundColor: AppColors.kSecondaryBgColor,
        title: Text(
          widget.title,
          style: GoogleFonts.ubuntu(
            fontSize: 18,
            color: AppColors.kBlack,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: TextField(
          controller: controller,
          // style: GoogleFonts.ubuntu(
          //   fontSize: 16,
          //   color: AppColors.grey800,
          //   fontWeight: FontWeight.w400,
          // ),
          decoration: InputDecoration(
            // filled: true,
            // fillColor: AppColors.kSecondaryBgColor,
            hintStyle: const TextStyle(
              fontSize: 16,
              color: AppColors.green200,
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
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.green500,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Done',
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                color: AppColors.kPrimaryTextColor,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {
              talker.info('text: ${controller.text} ');
              Navigator.of(context).pop(controller.text);
            },
          )
        ],
      );
}
