import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class HomeCategoryItem extends StatelessWidget {
  String? title;
  String? subtitle;
  String? imageUrl;

  HomeCategoryItem({
    this.title,
    this.subtitle,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 102,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: kWhiteColor,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title!,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        subtitle!,
                        style: greyTextStyle.copyWith(
                          fontWeight: semibold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            imageUrl!,
            height: 122,
          )
        ],
      ),
    );
  }
}
