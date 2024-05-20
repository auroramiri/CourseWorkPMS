import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 6,
      separatorBuilder: (_, index) =>
          const SizedBox(height: SSizes.spaceBtwItems),
      itemBuilder: (_, index) => SRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(SSizes.md),
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Status & Date Row
            Row(
              children: [
                //Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: SSizes.spaceBtwItems / 2),
                //Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Status',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                                color: SColors.primary,
                                fontWeightDelta: 1,
                              )),
                      Text('Some Date',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                //Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: SSizes.iconSm,
                    ))
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwItems),

            //Details Row
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: SSizes.spaceBtwItems / 2),
                      //Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#74562]',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: SSizes.spaceBtwItems / 2),
                      //Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('25 Nov 2024',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
