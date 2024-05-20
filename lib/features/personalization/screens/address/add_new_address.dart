import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const SAppBar(title: Text('Add New Address'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Form(
            child: Column(children: [
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
              const SizedBox(height: SSizes.spaceBtwInputFields),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: 'Phone Number')),
              const SizedBox(height: SSizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building_31),
                            labelText: 'Street')),
                  ),
                  const SizedBox(width: SSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: 'Postal Code')),
                  ),
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: 'City')),
                  ),
                  const SizedBox(width: SSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: 'State')),
                  ),
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwInputFields),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
              const SizedBox(height: SSizes.defaultSpace),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: const Text('Save')),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
