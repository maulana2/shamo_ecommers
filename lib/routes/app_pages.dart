import 'package:get/get.dart';
import 'package:shamo_app/ui/pages/home_page.dart';
import 'package:shamo_app/ui/pages/sign_in_page.dart';
import 'package:shamo_app/ui/pages/splash_screen.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => SigninPage(),
    ),
  ];
}
