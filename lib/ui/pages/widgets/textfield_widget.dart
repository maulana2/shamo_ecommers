import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shamo_app/shared/theme/theme.dart';

class CustomWidgets {
  static Widget textField(String title,
      {bool isPassword = false,
      bool isNumber = false,
      int? length,
      TextEditingController? textController,
      int lines = 1}) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 19),
            decoration: BoxDecoration(
              color: bgColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                isPassword == true
                    ? Image.asset('assets/images/password-Icon.png')
                    : Image.asset('assets/images/email-icon.png'),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextField(
                    obscureText: isPassword == true ? true : false,
                    decoration: InputDecoration(
                      hintText: isPassword == true
                          ? 'Your Password'
                          : 'Your Email Address',
                      hintStyle: secondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget button({
    required Color buttonColor,
    required String title,
    required Color textColor,
    /* required Function onButtonPressed */
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
          style: secondaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
