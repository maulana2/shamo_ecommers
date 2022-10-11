import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/home/main_page.dart';
import 'package:shamo_app/ui/pages/home/home_page.dart';
import 'package:shamo_app/ui/pages/widgets/custom_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          bottom: 25,
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
                color: primaryTextColor,
              ),
            ),
            Text(
              'Regiter and Happy Shopping',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                color: blackText,
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  header(),
                  CustomWidgets.textField(
                    title: 'Full Name',
                    hintText: 'Your full name',
                    isPassword: false,
                    iconLeading: 'assets/images/username_icon.png',
                  ),
                  CustomWidgets.textField(
                    title: 'Username',
                    iconLeading: 'assets/images/union.png',
                    hintText: 'Your username',
                    isPassword: false,
                  ),
                  CustomWidgets.textField(
                    title: 'Password',
                    iconLeading: 'assets/images/password.png',
                    hintText: 'Your passwoard',
                  ),
                  CustomWidgets.button(
                    buttonColor: primaryColor,
                    title: 'Sign Up',
                    textColor: primaryTextColor,
                    onTap: () {
                      Get.offAll(MainPage());
                    },
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          color: blackText,
                        ),
                      ),
                      Text(
                        'Sign In',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          color: priceColor,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
