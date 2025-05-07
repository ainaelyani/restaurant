import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/common/app_style.dart';
import 'package:restaurant/common/reusable_text.dart';
import 'package:restaurant/constants/constants.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key, required this.food,
  });

  final Map<String, dynamic> food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:12.h, vertical: 4),
      child: Container(
        height: 76,
        decoration: BoxDecoration(
          color: kOffWhite,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: SizedBox(
                width: 62.w,
                height: 62.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(food['imageUrl'], fit: BoxFit.cover,)
                ),
              ),
            ),
          SizedBox(width: 12.w,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableText(text: food['title'], 
              style: appStyle(11, kDark, FontWeight.w500)),
              ReusableText(
                text: "Delivery time: ${food['title']}", 
                style: appStyle(9, kGray, FontWeight.w500)),

              SizedBox(
                height: 18.h,
                width: width*0.7,
                child: ListView.builder(
                  itemCount: food['additives'].length,
                  itemBuilder: (context,i){
                    String title = food ['additive'][i]['title'];
                    return Container(
                      margin: EdgeInsets.only(right: 5.w),
                      decoration: BoxDecoration(
                        color: kSecondaryLight,
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      child: Center(
                        child: ReusableText(text: title, style: appStyle(8, kGray, FontWeight.w400)),
                      ),
                    );
                  }),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
