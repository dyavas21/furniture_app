import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: kWhiteColor,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/wishlist');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_heart.png',
                width: 24,
              ),
              label: 'wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_person.png',
                width: 24,
                color: kBlueColor,
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          ListView(
            children: [
              SizedBox(
                height: 130,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image_profile.png',
                          width: 120,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Theresa Webb',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 88,
                      height: 44,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kWhiteColor,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/icon_switch_light.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
