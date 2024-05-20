import 'package:flutter/material.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/device/device_utility.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class STabBar extends StatelessWidget implements PreferredSizeWidget {
  const STabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SColors.black : SColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: SColors.primary,
        unselectedLabelColor: SColors.darkGrey,
        labelColor: dark ? SColors.white : SColors.primary,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
