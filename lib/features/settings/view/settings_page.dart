import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/features/counter/view/counter_page.dart';
import 'package:college_buddy_admin/features/theme_segmented_btn/view/theme_segmented_btn.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CounterText(),
            ThemeSegmentedBtn(),
          ],
        ),
      ),
    );
  }
}
