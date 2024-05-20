import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/features/authentication/controllers/signup/signup_controller.dart';
import 'package:strikeshop/features/authentication/screens/signup/widgets/term_conditions_checkbox.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/constants/text_strings.dart';
import 'package:strikeshop/utils/validators/validation.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      SValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: STexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      SValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: STexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),
          //Username
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                SValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),
          //Email
          TextFormField(
            controller: controller.email,
            validator: (value) => SValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: STexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),
          //Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => SValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: STexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),
          //Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => SValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: STexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwSections),
          //Terms&Conditions Checkbox
          const STermsAndConditionsCheckbox(),
          const SizedBox(height: SSizes.spaceBtwSections),
          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(STexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
