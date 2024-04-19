import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/data/models/notice_model.dart';
import 'package:college_buddy_admin/data/values/notice_value.dart';
import 'package:college_buddy_admin/shared/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticeDataTable extends StatelessWidget {
  const NoticeDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    final columns = ['Date', 'Title', 'Download'];
    List<DataColumn> getColumns(List<String> columns) {
      return columns.map((String column) {
        return DataColumn(
          label: Text(
            column,
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
              color: AppColors.grey800,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
        );
      }).toList();
    }

    List<DataRow> getRows(
      List<NoticeModel> notice,
      BuildContext context,
    ) {
      return notice.map((NoticeModel notice) {
        final cells = [
          notice.date,
          notice.noticeTitle,
          notice.downloadURL,
        ];

        return DataRow(
          cells: Utility.modelBuilder(cells, (index, model) {
            // final showIcon = index == 6;

            if (index == 2) {
              return DataCell(
                ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(notice.downloadURL));
                  },
                  child: Text(
                    'Download',
                    style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      color: AppColors.grey800,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            } else {
              return DataCell(
                Text(
                  model,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    color: AppColors.grey800,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }
          }),
        );
      }).toList();
    }

    return DataTable(
      columns: getColumns(columns),
      rows: getRows(allNotice, context),
      sortAscending: true,
      dividerThickness: 1,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headingRowColor: MaterialStateProperty.resolveWith((states) => AppColors.green400),
      columnSpacing: 100,
      dataRowMinHeight: 30,
    );
  }
}