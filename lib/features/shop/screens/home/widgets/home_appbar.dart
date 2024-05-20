import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:strikeshop/common/widgets/shimmers/shimmer.dart';
import 'package:strikeshop/features/personalization/controllers/user_controller.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/text_strings.dart';

class SHomeAppBar extends StatelessWidget {
  const SHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(STexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: SColors.grey)),
          Obx(
            () {
              if (controller.profileLoading.value) {
                return const SShimmerEffect(width: 80, height: 15);
              } else {
                return Text(controller.user.value.fullName,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: SColors.white));
              }
            },
          )
        ],
      ),
      actions: [SCartCounterIcon(onPressed: () {})],
    );
  }
}
