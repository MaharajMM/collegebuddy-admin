import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/bootstrap.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/data/models/user_model.dart';
import 'package:college_buddy_admin/data/values/user_vlaue.dart';
import 'package:college_buddy_admin/features/home/view/widgets/header_widget.dart';
import 'package:college_buddy_admin/features/students/widgets/search_student_row_widget.dart';
import 'package:college_buddy_admin/features/students/widgets/text_dialog_widget.dart';
import 'package:college_buddy_admin/shared/utils/utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
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
                child: Column(
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
                    const SearchStudentRowWidget(),
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
                          child: buildDataTable(context),
                        ),
                      ),
                    ),
                  ],
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

  Widget buildDataTable(
    BuildContext context,
  ) {
    final columns = ['Name', 'Roll no.', 'Regd No.', 'DOB', 'Phone No.', 'Email', 'Action'];
    return DataTable(
      columns: getColumns(columns),
      rows: getRows(allUsers, context),
      sortAscending: true,
      dividerThickness: 1,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      headingRowColor: MaterialStateProperty.resolveWith((states) => AppColors.green400),
      columnSpacing: 100,
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
    List<User> users,
    BuildContext context,
  ) {
    return users.map((User user) {
      final cells = [
        user.name,
        user.rollNo,
        user.regdNo,
        user.dob,
        user.phoneNo,
        user.email,
        'Edit'
      ];
      Future editTableCell(User editUser) async {
        final showFirstName = await showTextDialog(
          context,
          title: 'Change Name',
          value: editUser.name,
        );

        if (showFirstName != null) {
          // setState(() {
          //   editUser = editUser.copyWith(name: showFirstName);
          //   // Assuming 'users' is a list of users and 'editUser' is the user being edited
          //   users = users.map((user) => user == editUser ? editUser : user).toList();
          // });
          setState(() => users = users.map((user) {
                final isEditedUser = user == editUser;
                return isEditedUser ? user.copyWith(name: showFirstName) : user;
              }).toList());
        } else {
          talker.info('showFirstName is null');
        }
      }

      return DataRow(
        cells: Utility.modelBuilder(cells, (index, model) {
          final showIcon = index == 6;
          return DataCell(
            Text(
              model,
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                color: AppColors.grey800,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            showEditIcon: showIcon,
            onTap: () {
              switch (index) {
                case 0:
                  editTableCell(user);
                  break;
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
