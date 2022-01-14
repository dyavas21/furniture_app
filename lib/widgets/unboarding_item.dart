import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class OnboardingItem extends StatelessWidget {
  String? imageUrl;
  String? title;
  String? subtitle;

  OnboardingItem({
    this.imageUrl,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 99,
        ),
        Image.asset(
          imageUrl!,
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title!,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subtitle!,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
