import 'package:get/get.dart';
import 'package:shamo_app/ui/pages/home/chat_page.dart';
import 'package:shamo_app/ui/pages/home/main_page.dart';
import 'package:shamo_app/ui/pages/home/home_page.dart';
import 'package:shamo_app/ui/pages/home/profile_page.dart';
import 'package:shamo_app/ui/pages/home/wishlist_page.dart';
import 'package:shamo_app/ui/pages/sign_in_page.dart';
import 'package:shamo_app/ui/pages/splash_screen.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.MAIN,
      page: () => MainPage(),
    ),
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => SigninPage(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SigninPage(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => ChatPages(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePages(),
    ),
    GetPage(
      name: Routes.WISHLIST,
      page: () => WishlistPages(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePages(),
    ),
  ];
}
