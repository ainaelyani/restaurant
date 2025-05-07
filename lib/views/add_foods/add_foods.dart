import 'package:flutter/material.dart';
import 'package:restaurant/common/app_style.dart';
import 'package:restaurant/common/background_container.dart';
import 'package:restaurant/common/reusable_text.dart';
import 'package:restaurant/constants/constants.dart';
import 'package:restaurant/views/add_foods/widgets/all_categories.dart';

class AddFoods extends StatefulWidget {
  const AddFoods({super.key});

  @override
  State<AddFoods> createState() => _AddFoodsState();
}

class _AddFoodsState extends State<AddFoods> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        backgroundColor: kSecondary,
        centerTitle: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(text: "Welcome to Restaurant Panel", 
            style: appStyle(14, kLightWhite, FontWeight.w600)),
            ReusableText(text: "Fill all the required info to add food items", 
            style: appStyle(12, kLightWhite, FontWeight.normal)),
          ],
        ),
      ),
      body: BackgroundContainer(
        child: ListView(
          children: [
            SizedBox(
              width: width,
              height: hieght,
              child: PageView(
                controller: _pageController,
                pageSnapping: false,
                children: [
                  ChooseCategory(),
                ],
              ),
            ),
          ],
        ),),
    );
  }
}
