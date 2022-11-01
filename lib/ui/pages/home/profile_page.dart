import 'package:flutter/material.dart';
import 'package:shamo_app/shared/theme/theme.dart';
import 'package:shamo_app/ui/pages/widgets/custom_widget.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return LimitedBox(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: defaultMargin,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              //profile
              Container(
                height: 64,
                width: 64,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
 
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, Alex',
                          style: primaryTextStyle.copyWith(
                            color: primaryTextColor,
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '@alex',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            color: blackText,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/exit-button.png',
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _titleAccount() {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          'Account',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      );
    }

    Widget _titleGeneral() {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          'General',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      );
    }

    return Column(
      children: [
        _header(),
        Expanded(
          child: LimitedBox(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor3,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: ListView(
                  
                  children: [
                    _titleAccount(),
                    CustomWidgets.tileProfile(
                      title: 'Edit Profile',
                      onPressed: () {
                        print('pressed');
                      },
                    ),
                    CustomWidgets.tileProfile(
                      title: 'Your Orders',
                      onPressed: () {},
                    ),
                    CustomWidgets.tileProfile(
                      title: 'Help',
                      onPressed: () {},
                    ),
                    _titleGeneral(),
                    CustomWidgets.tileProfile(
                      title: 'Privacy & Policy',
                      onPressed: () {},
                    ),
                    CustomWidgets.tileProfile(
                      title: 'Term of Service',
                      onPressed: () {},
                    ),
                    CustomWidgets.tileProfile(
                      title: 'Rate App',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
