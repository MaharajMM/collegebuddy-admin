import 'package:college_buddy_admin/features/counter/view/counter_page.dart';
import 'package:college_buddy_admin/features/theme_segmented_btn/view/theme_segmented_btn.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CounterText(),
          ThemeSegmentedBtn(),
        ],
      ),
    );
  }
}
