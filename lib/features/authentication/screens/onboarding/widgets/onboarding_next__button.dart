import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/device/device_utility.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      right: SSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? SColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
