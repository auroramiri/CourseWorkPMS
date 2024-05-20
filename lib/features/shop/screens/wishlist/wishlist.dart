import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/common/widgets/icons/s_circular_icon.dart';
import 'package:strikeshop/common/widgets/layouts/grid_layout.dart';
import 'package:strikeshop/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:strikeshop/features/shop/models/product_model.dart';
import 'package:strikeshop/features/shop/screens/home/home.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          SCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => SProductCardVertical(product: ProductModel.empty()))
            ],
          ),
        ),
      ),
    );
  }
}
