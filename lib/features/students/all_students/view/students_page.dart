import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/data/models/students_model.dart';
import 'package:college_buddy_admin/features/home/view/widgets/header_widget.dart';
import 'package:college_buddy_admin/features/students/all_students/controller/students_pod.dart';
import 'package:college_buddy_admin/features/students/all_students/widgets/search_student_row_widget.dart';
import 'package:college_buddy_admin/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:college_buddy_admin/shared/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const StudentView();
  }
}

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  String? nameQuery;
  String? regdNoQuery;
  String? rollNoQuery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: const Border(bottom: BorderSide(color: AppColors.grey300)),
              color: AppColors.green100.withOpacity(0.1),
            ),
            child: const HeaderWidget(),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: AppPadding.kQuatHalfPad,
                child: Consumer(
                  builder: (context, ref, child) {
                    final allStudentsAsync = ref.watch(studentsProvider);
                    return allStudentsAsync.easyWhen(
                      data: (studentsModel) {
                        final studentsList = studentsModel.data;
                        final filteredStudents = _filterStudents(studentsList);
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppSmallText(
                                  text: 'My students.',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                                AppSmallText(text: 'Find any students')
                              ],
                            ).pOnly(bottom: 20),
                            SearchStudentRowWidget(
                              onSearch: (name, regdNo, rollNo) {
                                setState(() {
                                  nameQuery = name;
                                  regdNoQuery = regdNo;
                                  rollNoQuery = rollNo;
                                });
                              },
                            ),
                            20.heightBox,
                            // StudentDetailsTableWidget(),

                            Flexible(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(color: AppColors.grey300, width: 2),
                                  ),
                                  child: filteredStudents.isNotEmpty
                                      ? buildDataTable(
                                          context: context,
                                          allStudents: filteredStudents,
                                        )
                                      : const SizedBox.shrink(),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      loadingWidget: () => const Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.navigateTo(const AddStudentRoute()),
        label: const AppSmallText(
          text: 'Add Student',
          fontSize: 16,
        ),
        icon: const Icon(Icons.edit),
        elevation: 10,
        backgroundColor: AppColors.green500,
        hoverColor: AppColors.green800,
        splashColor: AppColors.green200,
      ),
    );
  }

  List<StudentsData> _filterStudents(List<StudentsData>? studentsList) {
    if (studentsList == null) return [];

    return studentsList.where((student) {
      final nameMatch = nameQuery == null || student.name!.contains(nameQuery!);
      final regdNoMatch = regdNoQuery == null || student.registrationNo!.contains(regdNoQuery!);
      final rollNoMatch = rollNoQuery == null || student.rollNo!.contains(rollNoQuery!);

      return nameMatch && regdNoMatch && rollNoMatch;
    }).toList();
  }

  Widget buildDataTable({
    required BuildContext context,
    required List<StudentsData> allStudents,
  }) {
    final columns = ['Name', 'Roll no.', 'Regd No.', 'DOB', 'Phone No.', 'Email', 'Branch'];
    return DataTable(
      columns: getColumns(columns),
      rows: getRows(allStudents, context),
      sortAscending: true,
      dividerThickness: 1,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      headingRowColor: MaterialStateProperty.resolveWith((states) => AppColors.green400),
      columnSpacing: 80,
      dataRowMinHeight: 30,
    );
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns.map((String column) {
      return DataColumn(
        label: Text(
          column,
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
    List<StudentsData> allStudents,
    BuildContext context,
  ) {
    return allStudents.map((StudentsData user) {
      var dateValue = DateFormat("yyyy-MM-ddTHH:mm:ssZ").parseUTC(user.dob!).toLocal();
      // Format date
      String formattedDate = DateFormat('dd-MMM-yyyy').format(dateValue);
      final cells = [
        user.name,
        user.rollNo,
        user.registrationNo,
        formattedDate,
        user.phoneNo,
        user.email,
        user.branch,
      ];

      return DataRow(
        cells: Utility.modelBuilder(cells, (index, model) {
          // final showIcon = index == 6;
          return DataCell(
            Text(
              model.toString(),
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                color: AppColors.grey800,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            // showEditIcon: showIcon,
            onTap: () {
              switch (index) {
                case 6:
                  context.navigateTo(const AddStudentRoute());
                default:
              }
            },
          );
        }),
      );
    }).toList();
  }
}
