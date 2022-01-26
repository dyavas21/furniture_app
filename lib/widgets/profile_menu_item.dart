import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  String? title;
  String? iconUrl;
  bool? isLightmode;

  ProfileMenuItem({
    this.iconUrl,
    this.title,
    this.isLightmode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Image.asset(
            iconUrl!,
            width: 24,
            color: isLightmode! ? kBlackColor : kWhiteColor,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title!,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semibold,
              color: isLightmode! ? kBlackColor : kWhiteColor,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: isLightmode! ? kBlackColor : kGreyColor,
          ),
        ],
      ),
    );
  }
}
