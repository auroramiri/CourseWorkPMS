import 'package:get/get.dart';
import 'package:strikeshop/features/authentication/screens/login/login.dart';
import 'package:strikeshop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:strikeshop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:strikeshop/features/authentication/screens/signup/signup.dart';
import 'package:strikeshop/features/authentication/screens/signup/verify_email.dart';
import 'package:strikeshop/features/personalization/screens/address/address.dart';
import 'package:strikeshop/features/personalization/screens/profile/profile.dart';
import 'package:strikeshop/features/personalization/screens/settings/settings.dart';
import 'package:strikeshop/features/shop/screens/cart/cart.dart';
import 'package:strikeshop/features/shop/screens/checkout/checkout.dart';
import 'package:strikeshop/features/shop/screens/home/home.dart';
import 'package:strikeshop/features/shop/screens/order/order.dart';
import 'package:strikeshop/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:strikeshop/features/shop/screens/store/store.dart';
import 'package:strikeshop/features/shop/screens/wishlist/wishlist.dart';
import 'package:strikeshop/routes/routes.dart';

class AppRoutes{
  static final pages = [
    GetPage(name: SRoutes.home, page: ()=> const HomeScreen()),
    GetPage(name: SRoutes.store, page: ()=> const StoreScreen()),
    GetPage(name: SRoutes.favourites, page: ()=> const FavouriteScreen()),
    GetPage(name: SRoutes.settings, page: ()=> const SettingsScreen()),
    GetPage(name: SRoutes.productReviews, page: ()=> const ProductReviewsScreen()),
    GetPage(name: SRoutes.order, page: ()=> const OrderScreen()),
    GetPage(name: SRoutes.checkout, page: ()=> const CheckoutScreen()),
    GetPage(name: SRoutes.cart, page: ()=> const CartScreen()),
    GetPage(name: SRoutes.userAddress, page: ()=> const UserAddressScreen()),
    GetPage(name: SRoutes.userProfile, page: ()=> const ProfileScreen()),
    GetPage(name: SRoutes.verifyEmail, page: ()=> const VerifyEmailScreen()),
    GetPage(name: SRoutes.forgetPassword, page: ()=> const ForgetPassword()),
    GetPage(name: SRoutes.onBoarding, page: ()=> const OnBoardingScreen()),
    GetPage(name: SRoutes.signIn, page: ()=> const LoginScreen()),
    GetPage(name: SRoutes.signup, page: ()=> const SignupScreen()),

  ];
}