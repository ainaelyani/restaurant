import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/common/reusable_text.dart';
import '../constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_style.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100.h,
      padding: EdgeInsets.fromLTRB(12.w, 30.h, 12.w, 0),
      color: kSecondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start, //?
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("assets/images/profile.jpg"),
              ),
            ], //?
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: "Kings Foods",
                  style: appStyle(14, Colors.white, FontWeight.bold)
                ),

                ReusableText(
                  text: "2118 LaFoods District21 Union City, NJ 1234",
                  style: appStyle(12, Colors.white, FontWeight.normal)
                ),
              ],
            ),
          ),

          SvgPicture.asset(
            'assets/icons/open_sign.svg',
            height: 35.h,
            width: 35.w,
          ),
        ],
      ),
    );
  }
}
