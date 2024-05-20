import 'package:flutter/material.dart';
import 'package:strikeshop/common/widgets/layouts/grid_layout.dart';
import 'package:strikeshop/common/widgets/shimmers/shimmer.dart';

class SBrandShimmer extends StatelessWidget {
  const SBrandShimmer({super.key, this.itemCount=4});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SGridLayout(
      mainAxisExtent: 80,
      itemCount: itemCount,
      itemBuilder: (_, __) {
        return const SShimmerEffect(width: 300, height: 80,);
      },
    );
  }
}