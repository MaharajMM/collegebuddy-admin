import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/library/view/book_shelf/widgets/books_form.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';
@RoutePage()
class AddBooksPage extends StatelessWidget {
  const AddBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddBooksView();
  }
}

class AddBooksView extends StatefulWidget {
  const AddBooksView({super.key});

  @override
  State<AddBooksView> createState() => _AddBooksViewState();
}

final _addBooksFormKey = GlobalKey<FormBuilderState>();

class _AddBooksViewState extends State<AddBooksView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.green500,
        title: const AppSmallText(
          text: 'Add Books to the Shelf',
          fontSize: 24,
          color: AppColors.grey200,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context.maybePop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey200,
          ),
        ),
      ),
      body: SafeArea(
        child: FormBuilder(
          key: _addBooksFormKey,
          initialValue: const {},
          child: AddBooksForm(
            actionButton:
                AppPrimaryButton(labelText: 'Add Book', onPressed: () {}),
            isEditMode: false,
            imageUrl: null,
          ),
        ).scrollVertical().p(16),
      ),
    );
  }
}
