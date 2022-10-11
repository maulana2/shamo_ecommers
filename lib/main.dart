import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamo_app/routes/app_pages.dart';
import 'package:shamo_app/ui/pages/home/home_page.dart';
import 'package:shamo_app/ui/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: Routes.SPLASHSCREEN,
      getPages: AppPages.pages,
    );
  }
}
