import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        child: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo-detail-chat-online.png',
                height: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                      color: primaryTextColor,
                    ),
                  ),
                  Text(
                    'Online',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                      color: greyText,
                    ),
                  )
                ],
              ),
            ],
          ),
          backgroundColor: bgColor,
          centerTitle: true,
        ),
        preferredSize: Size.fromHeight(70),
      );
    }

    chatInput() {
      return Container(
        height: 45,
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: bgColor4,
                ),
                child: TextField(
                  style: primaryTextStyle.copyWith(),
                  decoration: InputDecoration.collapsed(

                    hintText: 'Type message...',
                    hintStyle: primaryTextStyle.copyWith(
                      color: subtitleColor,
                    ),
                  ),
                  autocorrect: false,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/images/send_button.png',
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor3,
        appBar: header(),
        bottomNavigationBar: chatInput(),
      ),
    );
  }
}
