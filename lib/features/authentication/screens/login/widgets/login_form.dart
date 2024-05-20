import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/features/authentication/controllers/login/login_controller.dart';
import 'package:strikeshop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:strikeshop/features/authentication/screens/signup/signup.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/constants/text_strings.dart';
import 'package:strikeshop/utils/validators/validation.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                controller: controller.email,
                validator: (value) => SValidator.validateEmail(value),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: STexts.email,
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields),
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  validator: (value) =>
                      SValidator.validateEmptyText('Password', value),
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
              const SizedBox(height: SSizes.spaceBtwInputFields / 2),

              //Remember Me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Remember Me
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value,
                        ),
                      ),
                      const Text(STexts.rememberMe),
                    ],
                  ),
                  //Forget Password
                  TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(STexts.forgetPassword),
                  )
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwSections),
              //Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.emailAndPasswordSignIn(),
                  child: const Text(STexts.signIn),
                ),
              ),

              const SizedBox(height: SSizes.spaceBtwItems),
              //Create a new Account

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text(STexts.createAccount),
                ),
              ),
            ],
          ),
        ));
  }
}
