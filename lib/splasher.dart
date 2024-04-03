import 'package:college_buddy_admin/app/view/app.dart';
import 'package:college_buddy_admin/bootstrap.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/features/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

class Splasher extends StatelessWidget {
  const Splasher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.green500),
      home: SplashView(
        removeSpalshLoader: false,
        onInitialized: (container) {
          bootstrap(
            () => const App(),
            parent: container,
          );
        },
      ),
    );
  }
}
