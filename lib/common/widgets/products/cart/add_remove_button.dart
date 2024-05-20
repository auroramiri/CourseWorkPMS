import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/icons/s_circular_icon.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class SProductQuantityAddRemoveButton extends StatelessWidget {
  const SProductQuantityAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: SSizes.md,
          color: SHelperFunctions.isDarkMode(context)
              ? SColors.white
              : SColors.black,
          backgroundColor: SHelperFunctions.isDarkMode(context)
              ? SColors.darkerGrey
              : SColors.light,
        ),
        const SizedBox(width: SSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: SSizes.spaceBtwItems),
        const SCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: SSizes.md,
          color: SColors.white,
          backgroundColor: SColors.primary,
        ),
      ],
    );
  }
}
