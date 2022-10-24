import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,

      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              20,
            ),
            child: Image.asset(
              height: 120,
              width: 120,
              'assets/images/item-images2.png',
              fit: BoxFit.cover,
            ),
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
                  'Footbal',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, color: secondaryTextColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Predator 20.3 FirmGround',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      color: primaryTextColor,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$650',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    color: priceColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
          /* Container(
            height: 130,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/item-images2.png',
                fit: BoxFit.contain),
          ), */
        ],
      ),
    );
  }
}
