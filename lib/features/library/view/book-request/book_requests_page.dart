import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/padding/app_padding.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/home/view/widgets/header_widget.dart';
import 'package:college_buddy_admin/features/library/view/book-request/widgets/book_request_status.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class BookRequestsPage extends StatelessWidget {
  const BookRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookRequestView();
  }
}

class BookRequestView extends StatefulWidget {
  const BookRequestView({super.key});

  @override
  State<BookRequestView> createState() => _BookRequestViewState();
}

class _BookRequestViewState extends State<BookRequestView> {
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
              border:
                  const Border(bottom: BorderSide(color: AppColors.grey300)),
              color: AppColors.green100.withOpacity(0.1),
            ),
            child: const HeaderWidget(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: AppPadding.kQuatHalfPad,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BookRequestTittle().pOnly(bottom: 20),
                        const BookRequestStatus().pOnly(right: 20)
                      ],
                    ).pOnly(bottom: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.kErrorColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const AppSmallText(text: 'Pending Requests'),
                                ListView.builder(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  primary: true,
                                  itemCount: 15,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      tileColor: AppColors.kErrorColor
                                          .withOpacity(0.5),
                                      title: Text('Column 1, Item $index'),
                                    ).p12();
                                  },
                                ),
                              ],
                            ),
                          ).p12(),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.kSuccessColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const AppSmallText(text: 'Verified Requests'),
                                ListView.builder(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  primary: true,
                                  itemCount: 15,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      tileColor: AppColors.kSuccessColor
                                          .withOpacity(0.5),
                                      title: Text('Column 2, Item $index'),
                                    ).p12();
                                  },
                                ),
                              ],
                            ),
                          ).p12(),
                        ),
                      ],
                    )
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Column(
                    //         children: [
                    //           ListView.separated(
                    //             separatorBuilder: (context, index) =>
                    //                 10.heightBox,
                    //             itemCount: 15,
                    //             shrinkWrap: true,
                    //             physics: const AlwaysScrollableScrollPhysics(),
                    //             primary: true,
                    //             itemBuilder: (
                    //               context,
                    //               index,
                    //             ) {
                    //               return ListTile(
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(10),
                    //                 ),
                    //                 tileColor:
                    //                     AppColors.kErrorColor.withOpacity(0.5),
                    //                 title: const AppSmallText(
                    //                   textAlign: TextAlign.start,
                    //                   text: 'Student Name',
                    //                   fontSize: 16,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //                 subtitle: const AppSmallText(
                    //                   textAlign: TextAlign.start,
                    //                   text: 'Class Name',
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w400,
                    //                 ),
                    //                 trailing: const AppSmallText(
                    //                   textAlign: TextAlign.start,
                    //                   text: 'Status',
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w400,
                    //                 ),
                    //               );
                    //             },
                    //           ).p12(),
                    //         ],
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Column(
                    //         children: [
                    //           ListView.separated(
                    //             separatorBuilder: (context, index) =>
                    //                 10.heightBox,
                    //             itemCount: 15,
                    //             shrinkWrap: true,
                    //             physics: const AlwaysScrollableScrollPhysics(),
                    //             primary: true,
                    //             itemBuilder: (
                    //               context,
                    //               index,
                    //             ) {
                    //               return ListTile(
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(10),
                    //                 ),
                    //                 tileColor: AppColors.kSuccessColor
                    //                     .withOpacity(0.5),
                    //                 title: const AppSmallText(
                    //                   textAlign: TextAlign.start,
                    //                   text: 'Student Name',
                    //                   fontSize: 16,
                    //                   fontWeight: FontWeight.w600,
                    //                 ),
                    //                 subtitle: const AppSmallText(
                    //                   textAlign: TextAlign.start,
                    //                   text: 'Class Name',
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w400,
                    //                 ),
                    //                 trailing: const AppSmallText(
                    //                   textAlign: TextAlign.start,
                    //                   text: 'Status',
                    //                   fontSize: 14,
                    //                   fontWeight: FontWeight.w400,
                    //                 ),
                    //               );
                    //             },
                    //           ).p12(),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookRequestTittle extends StatelessWidget {
  const BookRequestTittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSmallText(
          text: 'New Requests for Books',
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        AppSmallText(text: 'do verify the requests fast....')
      ],
    );
  }
}
