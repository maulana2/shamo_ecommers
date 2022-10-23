import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/widgets/product_tile.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appBarWidget() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Alex',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      color: primaryTextColor,
                    ),
                  ),
                  Text(
                    '@alexkeinn',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: blackText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: priceColor,
                  border: Border.all(color: blackText),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: blackText,
                    )),
                child: Text(
                  'Running',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: blackText,
                    )),
                child: Text(
                  'Training',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: blackText,
                    )),
                child: Text(
                  'Basket',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: transparentColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: blackText,
                    )),
                child: Text(
                  'Futsal',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Text(
          'Popular Product',
          style: primaryTextStyle.copyWith(
            color: primaryTextColor,
            fontWeight: semiBold,
            fontSize: 22,
          ),
        ),
      );
    }

    Widget popularProductItem() {
      return Container(
        margin: EdgeInsets.only(top: 14, left: defaultMargin),
        height: 278,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(
              right: defaultMargin,
            ),
            height: 278,
            width: 215,
            decoration: BoxDecoration(
              color: primaryTextColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: defaultMargin,
                ),
                Image.asset(
                  'assets/images/item-images.png',
                  height: 120,
                  width: 215,
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hiking',
                        style: primaryTextStyle.copyWith(
                          color: grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'TERREX URBAN LOW',
                        style: primaryTextStyle.copyWith(
                          color: blackTextColor,
                          fontWeight: semiBold,
                          fontSize: 18,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '\$143.00',
                        style: primaryTextStyle.copyWith(
                          color: priceColor,
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        padding: EdgeInsets.only(
          left: defaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            color: primaryTextColor,
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivalsItems() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => ProductTile(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            appBarWidget(),
            categories(),
            popularProductTitle(),
            popularProductItem(),
            newArrivalsTitle(),
            newArrivalsItems(),
          ],
        ),
      ),
    );
  }
}
