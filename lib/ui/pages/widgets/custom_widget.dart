import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shamo_app/shared/theme/theme.dart';

class CustomWidgets {
  static Widget textField({
    bool isPassword = false,
    bool isNumber = false,
    TextEditingController? textController,
    required String title,
    required String iconLeading,
    required String hintText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      margin: EdgeInsets.only(
        top: 20,
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
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: bgColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    iconLeading,
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: isPassword == true
                          ? TextInputType.text
                          : TextInputType.emailAddress,
                      controller: textController,
                      obscureText: isPassword == true ? true : false,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
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
          ),
        ],
      ),
    );
  }

  static Widget button(
      {required Color buttonColor,
      required String title,
      required Color textColor,
      required VoidCallback onTap
      /* required Function onButtonPressed */
      }) {
    return Container(
      margin:
          EdgeInsets.only(top: 30, right: defaultMargin, left: defaultMargin),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: secondaryTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 16,
            color: primaryTextColor,
          ),
        ),
      ),
    );
  }
}
