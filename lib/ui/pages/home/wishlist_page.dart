import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/widgets/custom_widget.dart';

class WishlistPages extends StatelessWidget {
  const WishlistPages({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar _appBar() {
      return AppBar(
        title: Text(
          'Favorite Shoes',
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

    _content() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/love-icon.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              ' You don\'t have dream shoes?',
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
              'Let\'s find your favorite shoes',
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
      );
    }

    return Scaffold(
      appBar: _appBar(),
      backgroundColor: bgColor3,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            _content(),
          ],
        ),
      ),
    );
  }
}
