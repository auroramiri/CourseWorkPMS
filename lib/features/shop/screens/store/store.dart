import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/common/widgets/appbar/tabbar.dart';
import 'package:strikeshop/common/widgets/brands/brand_card.dart';
import 'package:strikeshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:strikeshop/common/widgets/layouts/grid_layout.dart';
import 'package:strikeshop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:strikeshop/common/widgets/shimmers/brand_shimmer.dart';
import 'package:strikeshop/common/widgets/texts/section_heading.dart';
import 'package:strikeshop/features/shop/controllers/brand_controller.dart';
import 'package:strikeshop/features/shop/controllers/category_controller.dart';
import 'package:strikeshop/features/shop/screens/brand/all_brands.dart';
import 'package:strikeshop/features/shop/screens/store/widgets/category_tab.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/constants/sizes.dart';
import 'package:strikeshop/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final brandController = Get.put(BrandController());
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: SAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [SCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
            //Header
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: SHelperFunctions.isDarkMode(context)
                      ? SColors.black
                      : SColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(SSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //Search Bar
                        const SizedBox(height: SSizes.spaceBtwItems),
                        const SSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: SSizes.spaceBtwSections),

                        //Featured Brands
                        SSectionHeading(
                            title: 'Featured Brands',
                            onPressed: () =>
                                Get.to(() => const AllBrandsScreen())),
                        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

                        Obx(() {
                          if (brandController.isLoading.value) {
                            return const SBrandShimmer();
                          }

                          if (brandController.featuredBrands.isEmpty) {
                            return Center(
                                child: Text(
                              'No brands found',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(color: Colors.white),
                            ));
                          }
                          return SGridLayout(
                              itemCount: brandController.featuredBrands.length,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                final brand =
                                    brandController.featuredBrands[index];
                                return SBrandCard(
                                  brand: brand,
                                  showBorder: false,
                                );
                              });
                        })
                      ],
                    ),
                  ),
                  //Tabs
                  bottom: STabBar(
                    tabs: categories
                        .map((category) => Tab(child: Text(category.name)))
                        .toList(),
                  ),
                ),
              ];
            },
            body: TabBarView(
                children: categories
                    .map((category) => SCategoryTab(category: category))
                    .toList())),
      ),
    );
  }
}
