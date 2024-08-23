import 'package:fast_food/View/pages/product_profile.dart';
import 'package:fast_food/constate/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CBestChoiceBar extends StatelessWidget {
  const CBestChoiceBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Choice',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(
                  color: MyColors.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 155.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (context, index) {
                return SizedBox(width: 10.w);
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Get.to(() => const CProductProfile(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.cupertino),
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      width: 120.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.grey.withOpacity(0.2),
                          Colors.black.withOpacity(0.3)
                        ]),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: ListView(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/burger.png',
                              width: double.infinity,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Beef Burger',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp),
                          ),
                          Text(
                            'crispy beef',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 10.sp),
                          ),
                          SizedBox(height: 5.h),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              '490 Da',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                          ),
                        ],
                      )),
                );
              }),
        )
      ],
    );
  }
}
