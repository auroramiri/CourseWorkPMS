import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strikeshop/common/widgets/appbar/appbar.dart';
import 'package:strikeshop/common/widgets/images/s_circular_image.dart';
import 'package:strikeshop/common/widgets/shimmers/shimmer.dart';
import 'package:strikeshop/common/widgets/texts/section_heading.dart';
import 'package:strikeshop/features/personalization/controllers/user_controller.dart';
import 'package:strikeshop/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:strikeshop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:strikeshop/utils/constants/image_strings.dart';
import 'package:strikeshop/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const SAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final image =
                          networkImage.isNotEmpty ? networkImage : SImages.user;
                      return controller.imageUploading.value
                          ? const SShimmerEffect(
                              width: 80, height: 80, radius: 80)
                          : SCircularImage(
                              image: image,
                              width: 80,
                              height: 80,
                              padding: 0,
                              isNetworkImage: networkImage.isNotEmpty,
                            );
                    }),
                    TextButton(
                      onPressed: () => controller.uploadUserProfilePicture(),
                      child: const Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),

              //Details
              const SizedBox(height: SSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              //Heading Profile Info
              const SSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              SProfileMenu(
                title: 'Name',
                value: controller.user.value.fullName,
                onPressed: () => Get.to(() => const ChangeNameScreen()),
              ),
              SProfileMenu(
                title: 'Username',
                value: controller.user.value.userName,
                onPressed: () {},
              ),

              const SizedBox(height: SSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              //Heading Personal Info
              const SSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              SProfileMenu(
                title: 'UserID',
                value: controller.user.value.id,
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              SProfileMenu(
                title: 'Email',
                value: controller.user.value.email,
                onPressed: () {},
              ),
              SProfileMenu(
                title: 'Phone Number',
                value: controller.user.value.phoneNumber,
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(),
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
