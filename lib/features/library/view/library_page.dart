import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/features/library/widgets/primary_library.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LibraryView();
  }
}

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kSecondaryBgColor,
      body: PrimaryLibraryBody(),
    );
  }
}
