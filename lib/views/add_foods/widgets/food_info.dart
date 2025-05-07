import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_style.dart';
import '../../../common/reusable_text.dart';
import '../../../constants/constants.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({super.key, required this.back, required this.next, this.title});

  final Function back;
  final Function next;
  final TextEditingController? title;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: hieght,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                    text: "Add Details",
                    style: appStyle(16, kGray, FontWeight.w600)),

                ReusableText(
                    text: "You are required to insert information correctly",
                    style: appStyle(11, kGray, FontWeight.normal)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
