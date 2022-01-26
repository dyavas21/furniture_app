import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/home_category_item.dart';
import 'package:furniture_app/widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'Chair',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icon_options.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 10,
          ),
          HomeCategoryItem(
            title: 'Minimalis Chair',
            subtitle: 'Chair',
            imageUrl: 'assets/image_product_category1.png',
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 18,
            spacing: 18,
            children: [
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid1.png'),
                price: 34,
                isWishlist: true,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid2.png'),
                price: 34,
                isWishlist: true,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid3.png'),
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid4.png'),
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid1.png'),
                price: 34,
                isWishlist: true,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid2.png'),
                price: 34,
                isWishlist: true,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid3.png'),
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: ('assets/image_product_grid4.png'),
                price: 34,
                isWishlist: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
