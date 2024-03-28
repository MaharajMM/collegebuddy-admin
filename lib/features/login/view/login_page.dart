import 'package:auto_route/auto_route.dart';
import 'package:college_buddy_admin/const/borders/app_border.dart';
import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/resource.dart';
import 'package:college_buddy_admin/core/router/router.gr.dart';
import 'package:college_buddy_admin/features/login/view/widgets/login_form_desktop.dart';
import 'package:college_buddy_admin/features/login/view/widgets/login_form_mobile.dart';
import 'package:college_buddy_admin/features/login/view/widgets/login_form_tablet.dart';
import 'package:college_buddy_admin/shared/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(
  deferredLoading: true,
)
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.kyellow1,
              AppColors.kyellow2,
              AppColors.kPrimaryColor,
              // Color.fromARGB(255, 81, 235, 88),
              // Color.fromARGB(255, 2, 52, 6),
            ],
          ),
        ),
        child: const Center(
          child: LoginCard(),
        ),
      ),
    );
  }
}

class LoginCard extends StatefulWidget {
  const LoginCard({super.key});

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  final _loginFormKey = GlobalKey<FormBuilderState>();
  void _submit() {
    context.navigateTo(const HomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: AppBorder.kFullCurve,
        color: AppColors.kSecondaryBgColor,
      ),
      child: Responsive.isDesktop(context)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(120),
                    child: FormBuilder(
                      key: _loginFormKey,
                      child: LoginFormDesktop(
                        submit: _submit,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SvgPicture.asset(R.ASSETS_ILLUSTRATIONS_FINGERPRINT_SVG),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(30),
              child: FormBuilder(
                key: _loginFormKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (Responsive.isTablet(context))
                      LoginFormTablet(
                        submit: _submit,
                      )
                    else if (Responsive.isMobile(context))
                      LoginFormMobile(
                        submit: _submit,
                      ),
                  ],
                ),
              ),
            ),
    );
  }
}
