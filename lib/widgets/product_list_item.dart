import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class ProductListItem extends StatelessWidget {
  String? title;
  String? imageUrl;
  int? price;

  ProductListItem({
    this.imageUrl,
    this.price,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl!,
            width: 60,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$$price',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
