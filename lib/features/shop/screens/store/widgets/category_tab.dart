import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/common/widgets/brands/brand_show_case.dart';
import 'package:strikeshop/common/widgets/layouts/grid_layout.dart';
import 'package:strikeshop/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:strikeshop/common/widgets/shimmers/vertical_product_shimmer.dart';
import 'package:strikeshop/common/widgets/texts/section_heading.dart';
import 'package:strikeshop/features/shop/controllers/product/product_controller.dart';
import 'package:strikeshop/features/shop/models/category_model.dart';
import 'package:strikeshop/utils/constants/image_strings.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: Column(
              children: [
                //Brands
                const SBrandShowcase(images: [
                  SImages.hk416Thumb,
                  SImages.gasMask,
                  SImages.helmetThumb,
                ]),
                const SizedBox(height: SSizes.spaceBtwItems),
                //Product
                SSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(height: SSizes.spaceBtwItems),

                Obx(() {
                  if (controller.isLoading.value) {
                    return const SVerticalProductShimmer();
                  }
                  if (controller.featuredProducts.isEmpty) {
                    return Center(
                      child: Text(
                        'No Data Found!',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  }
                  return SGridLayout(
                    itemCount: controller.featuredProducts.length,
                    itemBuilder: (_, index) => SProductCardVertical(
                        product: controller.featuredProducts[index]),
                  );
                }),
              ],
            ),
          ),
        ]);
  }
}
