import 'package:flutter/material.dart';
import 'package:strikeshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:strikeshop/common/widgets/texts/section_heading.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/image_strings.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class SBillingPaymentSection extends StatelessWidget {
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),
        Row(
          children: [
            SRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SColors.light : SColors.white,
              padding: const EdgeInsets.all(SSizes.sm),
              child: const Image(
                image: AssetImage(SImages.applePay),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwItems / 2),
            Text('Apple Pay', style: Theme.of(context).textTheme.bodyLarge)
          ],
        ),
      ],
    );
  }
}
