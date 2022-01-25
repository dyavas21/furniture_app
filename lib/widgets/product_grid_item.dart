import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';
import 'package:shimmer/shimmer.dart';

class ProductGridItem extends StatelessWidget {
  String? title;
  String? imageUrl;
  int? price;
  bool? isWishlist;

  ProductGridItem({
    this.imageUrl,
    this.isWishlist,
    this.price,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl!,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title!,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                  ),
                ),
                Image.asset(
                  isWishlist!
                      ? 'assets/button_whislist_active.png'
                      : 'assets/button_whislist.png',
                  width: 44,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
