import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/unboarding_item.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding1.png',
                  title: 'Buy Furniture Easily',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding2.png',
                  title: 'Fast Delivery',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding3.png',
                  title: 'Best Price',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                ),
              ],
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBlackColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kLineDarkColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kLineDarkColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
        ],
      ),
    );
  }
}
