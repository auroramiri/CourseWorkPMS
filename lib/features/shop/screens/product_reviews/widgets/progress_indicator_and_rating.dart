import 'package:flutter/material.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/device/device_utility.dart';

class SRatingProgressIndicator extends StatelessWidget {
  const SRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
      Expanded(
        flex: 12,
        child: SizedBox(
          width: SDeviceUtils.getScreenWidth(context) * 0.8,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: SColors.grey,
            valueColor: const AlwaysStoppedAnimation(SColors.primary),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      )
    ]);
  }
}
