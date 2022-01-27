import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color indicatorColor = Color(0xff394A54);
  double indicatorMargin = 5;
  int currentIndex = 1;
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          Container(
            margin: EdgeInsets.only(top: 95),
            child: Image.asset('assets/image_detail$currentIndex.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 66,
                left: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kLineDarkColor,
                ),
                shape: BoxShape.circle,
                color: kWhiteColor,
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.chevron_left),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.35,
              minChildSize: 0.35,
              maxChildSize: 0.95,
              builder: (BuildContext build, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: NotificationListener(
                    onNotification: (Notification notif) {
                      if (notif is ScrollEndNotification) {
                        if (notif.metrics.minScrollExtent == -1.0) {
                          setState(() {
                            isExpand = true;
                          });
                        } else {
                          setState(() {
                            isExpand = false;
                          });
                        }
                      }
                      return true;
                    },
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Center(
                              child: Container(
                                width: 30,
                                height: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: kLineDarkColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Poang Chair',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: semibold,
                                  ),
                                ),
                                Text(
                                  '\$219',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'IKOE',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 50,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      colorIndicator(Color(0xff394A54), 0),
                                      colorIndicator(Color(0xffEBA823), 1),
                                      colorIndicator(Color(0xff757477), 2),
                                      colorIndicator(Color(0xff29282C), 3),
                                      colorIndicator(Color(0xffECE9DA), 4),
                                    ],
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    width: 40,
                                    height: 40,
                                    margin:
                                        EdgeInsets.only(left: indicatorMargin),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: indicatorColor,
                                      border: Border.all(
                                        width: 3,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950\'s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semibold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950\'s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semibold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950\'s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semibold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950\'s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semibold,
                                height: 1.8,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Bringing new life to an old favourite. We first introduced this chair in the 1950\'s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semibold,
                                height: 1.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: isExpand
          ? null
          : Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kGreyColor,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: kWhiteGreyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_shopping_cart.png',
                        width: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Buy Now',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semibold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indicatorColor = color;
          indicatorMargin = 5 + (index * 70);
          currentIndex = index + 1;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
