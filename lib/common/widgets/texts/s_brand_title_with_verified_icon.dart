import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/texts/s_brand_title_text.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/enums.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class SBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const SBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = SColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SBrandTextTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            
          ),
        ),
        const SizedBox(width: SSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: SColors.primary,
          size: SSizes.iconXs,
        )
      ],
    );
  }
}
