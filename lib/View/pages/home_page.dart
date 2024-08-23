import 'package:fast_food/View/custum/HomePage/best_choice_bar.dart';
import 'package:fast_food/View/custum/HomePage/categorie_bar.dart';
import 'package:fast_food/View/custum/HomePage/location_bar.dart';
import 'package:fast_food/View/custum/HomePage/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
      child: ListView(
        children: [
          const CLocationBar(),
          SizedBox(height: 20.h),
          const CSearchBar(),
          SizedBox(height: 25.h),
          const CCategorieBar(),
          SizedBox(height: 30.h),
          const CBestChoiceBar(),
        ],
      ),
    );
  }
}
