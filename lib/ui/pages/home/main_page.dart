import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/home/chat_page.dart';
import 'package:shamo_app/ui/pages/home/home_page.dart';
import 'package:shamo_app/ui/pages/home/profile_page.dart';
import 'package:shamo_app/ui/pages/home/wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/images/cart-icon.png',
          width: 20,
        ),
        onPressed: () {},
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  print(value);
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: bgColor4,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/images/home.png',
                        width: 20,
                        height: 20,
                        color:
                            currentIndex == 0 ? priceColor : Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/images/chat-icon.png',
                        width: 20,
                        height: 20,
                        color:
                            currentIndex == 1 ? priceColor : Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/images/union-icon.png',
                        width: 20,
                        height: 20,
                        color:
                            currentIndex == 2 ? priceColor : Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/images/profile-icon.png',
                        width: 20,
                        height: 20,
                        color:
                            currentIndex == 3 ? priceColor : Color(0xff808191),
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    body() {
      switch (currentIndex) {
        case 0:
          return HomePages();
          break;
        case 1:
          return ChatPages();
          break;
        case 2:
          return WishlistPages();
          break;
        case 3:
          return ProfilePages();
          break;
        default:
          return HomePages();
      }
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
        backgroundColor: bgColor,
        body: body(),
      ),
    );
  }
}
