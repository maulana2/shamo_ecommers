import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamo_app/routes/app_pages.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/detail_chat_page.dart';
import 'package:shamo_app/ui/pages/widgets/custom_widget.dart';

class ChatPages extends StatelessWidget {
  const ChatPages({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar _appBarChat() {
      return AppBar(
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
            color: primaryTextColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0,
        leading: SizedBox(),
      );
    }

    _empty() {
      return Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/headset-icon.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Opss no message yet?',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: primaryTextColor,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'You have never done a transaction',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      color: secondaryTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomWidgets.button(
                    borderRadius: 12,
                    width: 152,
                    buttonColor: primaryColor,
                    title: 'Explore Store',
                    textColor: primaryTextColor,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _isNotEmpty() {
      return SingleChildScrollView(
        child: ListView.separated(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) => MaterialButton(
                  onPressed: () => Get.to(DetailChatPage()),
                  child: Padding(
                    padding: EdgeInsets.only(top: defaultMargin),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      margin: EdgeInsets.only(
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/logo-shop.png',
                            height: 54,
                            width: 54,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Shoes Store',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  'Good Night, this is message from store, thank you for following this store',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: light,
                                    color: secondaryTextColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 15,
                            width: 30,
                            child: Text(
                              "now",
                              style: primaryTextStyle.copyWith(
                                  fontSize: 10,
                                  color: secondaryTextColor,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(
                    top: 12,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Divider(
                    color: dividerColor,
                    thickness: 1,
                  ),
                ),
            itemCount: 20),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: _appBarChat(),
        backgroundColor: bgColor3,
        body: _isNotEmpty(),
      ),
    );
  }
}
