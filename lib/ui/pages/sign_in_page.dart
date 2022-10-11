import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/home/main_page.dart';
import 'package:shamo_app/ui/pages/home/home_page.dart';
import 'package:shamo_app/ui/pages/sign_up_page.dart';
import 'package:shamo_app/ui/pages/widgets/custom_widget.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 70,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 24,
              ),
            ),
            Text(
              'Sign In to Countinue',
              style: secondaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: normal,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                CustomWidgets.textField(
                  isPassword: false,
                  hintText: 'Your email adress',
                  iconLeading: 'assets/images/email-icon.png',
                  title: 'Email',
                ),
                CustomWidgets.textField(
                  isPassword: true,
                  hintText: 'Your password',
                  iconLeading: 'assets/images/password.png',
                  title: 'Password',
                ),
                CustomWidgets.button(
                    buttonColor: primaryColor,
                    title: 'Sign In',
                    textColor: Colors.white,
                    onTap: () {
                      print('print');
                      Get.offAll(MainPage());
                    }),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: primaryTextStyle.copyWith(
                        color: blackText,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Sign Up',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          color: primaryColor,
                        ),
                      ),
                      onPressed: () {
                        Get.to(
                          () => SignUpPage(),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
