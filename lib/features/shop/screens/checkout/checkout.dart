import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:strikeshop/common/widgets/products/cart/coupon_widget.dart';
import 'package:strikeshop/common/widgets/success_screen/success_screen.dart';
import 'package:strikeshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:strikeshop/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:strikeshop/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:strikeshop/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:strikeshop/navigation_menu.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/image_strings.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              const SCartItems(showAddRemoveButtons: false),
              const SizedBox(height: SSizes.spaceBtwSections),

              //Coupon Field
              const SCouponCode(),
              const SizedBox(height: SSizes.spaceBtwSections),

              //Billing Section
              SRoundedContainer(
                padding: const EdgeInsets.all(SSizes.md),
                showBorder: true,
                backgroundColor: dark ? SColors.black : SColors.white,
                child: const Column(
                  children: [
                    //Pricing
                    SBillingAmountSection(),
                    SizedBox(height: SSizes.spaceBtwItems),
                    //Divider
                    Divider(),
                    SizedBox(height: SSizes.spaceBtwItems),
                    //Payment Methods
                    SBillingPaymentSection(),
                    SizedBox(height: SSizes.spaceBtwItems),
                    //Address
                    SBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      //Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
              image: SImages.successfulPaymentIcon,
              title: 'Successful Payment',
              subtitle: 'Your order has been placed successfully',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            )),
            child: const Text('Checkout \$1024')),
      ),
    );
  }
}
