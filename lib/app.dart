import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strikeshop/bindings/general_bindings.dart';
import 'package:strikeshop/routes/app_routes.dart';
import 'package:strikeshop/utils/constants/colors.dart';
import 'package:strikeshop/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
        themeMode: ThemeMode.system,
        theme: SAppTheme.lightTheme,
        darkTheme: SAppTheme.darkTheme,
        home: const Scaffold(
          backgroundColor: SColors.primary,
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ));
  }
}
