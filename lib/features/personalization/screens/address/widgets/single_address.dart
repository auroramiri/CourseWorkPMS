import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class SSingleAddress extends StatelessWidget {
  const SSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      padding: const EdgeInsets.all(SSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? SColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SColors.darkerGrey
              : SColors.grey,
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? SColors.light
                      : SColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Some User Name',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SSizes.sm / 2),
              const Text(
                'Some Phone Number',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                // style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SSizes.sm / 2),
              const Text(
                'Some address',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
