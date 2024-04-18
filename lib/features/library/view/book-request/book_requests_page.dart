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
          Flexible(
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
                    ),
                    


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
