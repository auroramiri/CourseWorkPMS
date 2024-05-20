import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/features/authentication/controllers/signup/signup_controller.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/constants/text_strings.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class STermsAndConditionsCheckbox extends StatelessWidget {
  const STermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value,
            ),
          ),
        ),
        const SizedBox(width: SSizes.spaceBtwItems),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '${STexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${STexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? SColors.white : SColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? SColors.white : SColors.primary,
                        )),
                TextSpan(
                  text: '${STexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                    text: STexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? SColors.white : SColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? SColors.white : SColors.primary,
                        )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
