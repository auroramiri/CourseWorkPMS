import 'package:flutter/material.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/common/widgets/brands/brand_card.dart';
import 'package:strikeshop/common/widgets/products/sortable/sortable_products.dart';
import 'package:strikeshop/features/shop/models/brand_model.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        title: Text('Brand Name'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Brand Detail
              SBrandCard(showBorder: true, brand: BrandModel.empty(),),
              const SizedBox(height: SSizes.spaceBtwSections),

              const SSortableProducts(products: []),
            ],
          ),
        ),
      ),
    );
  }
}
