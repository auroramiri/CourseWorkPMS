import 'package:flutter/material.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/features/shop/screens/order/widgets/order_list.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: SOrderListItems(),
      ),
    );
  }
}
