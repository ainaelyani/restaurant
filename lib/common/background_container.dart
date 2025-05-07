import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      child: Container(
        width: width,
        height: hieght,
        decoration: BoxDecoration(
          color: color ?? kLightWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          image: const DecorationImage(
              image: AssetImage('assets/images/restaurant_bk.png'),
              fit: BoxFit.cover),
        ),
        child: child,
      ),
    );
  }
}
