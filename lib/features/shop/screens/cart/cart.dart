import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:strikeshop/features/shop/screens/checkout/checkout.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        //Items in Cart
        child: SCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout \$1024'),
        ),
      ),
    );
  }
}
