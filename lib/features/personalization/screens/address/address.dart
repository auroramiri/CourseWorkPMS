import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/features/personalization/screens/address/add_new_address.dart';
import 'package:strikeshop/features/personalization/screens/address/widgets/single_address.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: SColors.primary,
        child: const Icon(Iconsax.add, color: SColors.white),
      ),
      appBar: SAppBar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SSingleAddress(selectedAddress: true),
              SSingleAddress(selectedAddress: false),
              SSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
