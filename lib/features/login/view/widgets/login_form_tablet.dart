import 'package:college_buddy_admin/const/colors/app_colors.dart';
import 'package:college_buddy_admin/const/textstyle/app_small_text.dart';
import 'package:college_buddy_admin/features/login/const/login_form_keys.dart';
import 'package:college_buddy_admin/shared/widget/buttons/app_primary_button.dart';
import 'package:college_buddy_admin/shared/widget/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginFormTablet extends StatefulWidget {
  final VoidCallback submit;
  const LoginFormTablet({
    super.key,
    required this.submit,
  });

  @override
  State<LoginFormTablet> createState() => _LoginFormTabletState();
}

class _LoginFormTabletState extends State<LoginFormTablet> {
  bool _obscureText = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSmallText(
          text: 'Welcome Back!',
          fontSize: 36,
          fontWeight: FontWeight.w600,
          color: AppColors.kBlack,
        ).pOnly(bottom: 10),
        const AppSmallText(
          text: 'Login to your account',
          fontSize: 20,
          color: AppColors.kBlack,
        ),
        CustomTextFormField(
          hintText: 'Enter Email',
          name: LoginFormKeys.email,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.email(),
          ]),
          prefixIcon: const Icon(
            Icons.alternate_email_outlined,
            size: 30,
            color: AppColors.kBlack,
          ),
        ).pSymmetric(v: 20),
        CustomTextFormField(
          hintText: 'Enter Password',
          name: LoginFormKeys.password,
          isObscureText: _obscureText,
          maxLine: 1,
          sufixIcon: IconButton(
            onPressed: _togglePasswordVisibility,
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
          ),
          prefixIcon: const Icon(
            Icons.fingerprint_rounded,
            size: 30,
            color: AppColors.kBlack,
          ),
        ).pOnly(bottom: 10),
        Row(
          children: [
            Checkbox.adaptive(
              activeColor: AppColors.green600,
              value: checkboxValue,
              onChanged: (value) {
                setState(() {
                  checkboxValue = value!;
                });
              },
            ),
            const AppSmallText(
              text: 'Remember me',
              fontSize: 14,
              color: AppColors.grey700,
            ),
          ],
        ).pOnly(bottom: 20),
        AppPrimaryButton(
          labelText: 'Sign in',
          onPressed: widget.submit,
          fontSize: 16,
        ),
      ],
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
