import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/home_category_item.dart';
import 'package:furniture_app/widgets/home_popular_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;

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
              // NOTE : HEADER/TITLE
              Container(
                margin: EdgeInsets.only(top: 24),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo_dark.png',
                      width: 53,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Space',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon_shopping_cart.png',
                      width: 30,
                    ),
                  ],
                ),
              ),

              // NOTE : SEARCHBAR
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Furniture',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      ),
                      Image.asset(
                        'assets/icon_search.png',
                        width: 24,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
              // NOTE : CATEGORY TITLE
              Container(
                margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: blackTextStyle,
                    ),
                  ],
                ),
              ),

              // NOTE : CATEGORY CAROUSEL
              Container(
                margin: EdgeInsets.only(top: 25),
                child: CarouselSlider(
                  items: [
                    HomeCategoryItem(
                      title: 'Minimalis Chair',
                      subtitle: 'Chair',
                      imageUrl: 'assets/image_product_category1.png',
                    ),
                    HomeCategoryItem(
                      title: 'Minimalis Table',
                      subtitle: 'Table',
                      imageUrl: 'assets/image_product_category2.png',
                    ),
                    HomeCategoryItem(
                      title: 'Minimalis Chair',
                      subtitle: 'Chair',
                      imageUrl: 'assets/image_product_category3.png',
                    ),
                  ],
                  options: CarouselOptions(
                      height: 140,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      onPageChanged: (value, _) {
                        setState(() {
                          categoryIndex = value;
                        });
                      }),
                ),
              ),

              // NOTE : CATEGORY CAROUSEL INDICATOR
              Container(
                margin: EdgeInsets.only(top: 13, left: 24, right: 24),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 0 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 1 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 2 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
              ),
              // NOTE : POPULAR SECTION
              Container(
                margin: EdgeInsets.only(top: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      40,
                    ),
                  ),
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: blackTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semibold,
                            ),
                          ),
                          Text(
                            'Show All',
                            style: blackTextStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 310,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HomePopularItem(
                              title: 'Poan Chair',
                              imageUrl: 'assets/image_product_popular1.png',
                              price: 34,
                              isWishlist: true,
                            ),
                            HomePopularItem(
                              title: 'Poan Chair',
                              imageUrl: 'assets/image_product_popular2.png',
                              price: 20,
                              isWishlist: false,
                            ),
                            HomePopularItem(
                              title: 'Poan Chair',
                              imageUrl: 'assets/image_product_popular3.png',
                              price: 42,
                              isWishlist: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
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
