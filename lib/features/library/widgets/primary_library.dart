import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/features/home/view/widgets/header_widget.dart';
import 'package:college_buddy_admin/features/library/widgets/secondary_library.dart';
import 'package:flutter/material.dart';

class PrimaryLibraryBody extends StatelessWidget {
  const PrimaryLibraryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LibraryHeader(),
        SecondaryLibraryBody(),
      ],
    );
  }
}

class LibraryHeader extends StatelessWidget {
  const LibraryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: const Border(
          bottom: BorderSide(color: AppColors.grey300),
        ),
        color: AppColors.green100.withOpacity(0.1),
      ),
      child: const HeaderWidget(),
    );
  }
}
