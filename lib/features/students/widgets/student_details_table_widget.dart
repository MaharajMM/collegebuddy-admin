import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

bool isRowEdit = false;

class StudentDetailsTableWidget extends StatefulWidget {
  const StudentDetailsTableWidget({super.key});

  @override
  State<StudentDetailsTableWidget> createState() => _StudentDetailsTableWidgetState();
}

class _StudentDetailsTableWidgetState extends State<StudentDetailsTableWidget> {
  late List<bool> isRowEdit; // Track edit state for each row
  int? editingRow; // Track the currently editing row index

  @override
  void initState() {
    super.initState();
    // Initialize all rows as not in edit mode
    isRowEdit = List.generate(10, (index) => false);
    editingRow = null; // Initially, no row is being edited
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.grey300, width: 2),
        ),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1.5), // Adjust the width of the "Name" column
            1: FlexColumnWidth(0.5),
            2: FlexColumnWidth(0.6),
            3: FlexColumnWidth(0.6),
            4: FlexColumnWidth(0.6),
            5: FlexColumnWidth(1.2),
            6: FlexColumnWidth(0.5),
          },
          border: const TableBorder(
            horizontalInside: BorderSide(color: AppColors.grey400, width: 1),
            verticalInside: BorderSide(color: AppColors.grey400, width: 1),
          ),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            const TableRow(
              decoration: BoxDecoration(color: AppColors.green400),
              children: [
                TitleTabelCell(text: 'Name'),
                TitleTabelCell(text: 'Roll no.'),
                TitleTabelCell(text: 'Regd No.'),
                TitleTabelCell(text: 'DOB'),
                TitleTabelCell(text: 'Phone No.'),
                TitleTabelCell(text: 'Email'),
                TitleTabelCell(text: 'Edit'),
              ],
            ),
            ...List.generate(
              10,
              (index) => TableRow(
                decoration: BoxDecoration(
                  color: isRowEdit[index] ? AppColors.green100 : Colors.transparent,
                ),
                children: [
                  const ValueTabelCell(text: 'Himanshu Mohapatra'),
                  const ValueTabelCell(text: '20CS 01'),
                  const ValueTabelCell(text: '2001331001'),
                  const ValueTabelCell(text: '15-05-2002'),
                  const ValueTabelCell(text: '1234567890'),
                  const ValueTabelCell(text: 'himanshu.02@gmail.com'),
                  TableCell(
                    child: GestureDetector(
                        onTap: () => setState(() {
                              // Toggle edit mode for the clicked row
                              if (editingRow != index) {
                                // Exit edit mode for the previously edited row
                                if (editingRow != null) {
                                  isRowEdit[editingRow!] = false;
                                }
                                // Enter edit mode for the currently tapped row
                                isRowEdit[index] = true;
                                editingRow = index;
                              } else {
                                // Toggle edit mode if the same row is tapped again
                                isRowEdit[index] = !isRowEdit[index];
                              }
                            }),
                        child: Padding(
                          padding: AppPadding.kQuatHalfPad,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.edit,
                                color: AppColors.kBlack,
                              ),
                              5.widthBox,
                              const AppSmallText(
                                text: 'Edit',
                                fontSize: 14,
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleTabelCell extends StatelessWidget {
  final String text;
  const TitleTabelCell({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: AppPadding.kQuatHalfPad,
        child: Center(
          child: AppSmallText(
            text: text,
            color: AppColors.grey800,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class ValueTabelCell extends StatelessWidget {
  final String text;

  const ValueTabelCell({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: AppPadding.kQuatHalfPad,
        child: Center(
          child: AppSmallText(
            text: text,
            fontSize: 14,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
