import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/common/styles/spacing_styles.dart';
import 'package:strikeshop/common/widgets/login_signup/form_divider.dart';
import 'package:strikeshop/common/widgets/login_signup/social_buttons.dart';
import 'package:strikeshop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:strikeshop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: SSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //Logo, Title & Subtitle
            const SLoginHeader(),
            //Form
            const SLoginForm(),
            //Divider
            SFormDivider(dividerText: STexts.orSignInWith.capitalize!),
            const SizedBox(height: SSizes.spaceBtwSections),

            //Footer
            const SSocialButtons(),
          ],
        ),
      )),
    );
  }
}

