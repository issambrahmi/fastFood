import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CBottomAppBar extends StatelessWidget {
  const CBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 100.h,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              width: double.infinity,
              decoration: const BoxDecoration(
                  //color: Colors.amber,
                  ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.grey.withOpacity(0.2),
                    Colors.black.withOpacity(0.3)
                  ]),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width:1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 27.sp,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 27.sp,
                    ),
                    SizedBox(
                      height: 35.sp,
                      width: 35.sp,
                    ),
                    Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                      size: 27.sp,
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                      size: 27.sp,
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Container(
                  height: 58.sp,
                  width: 58.sp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color(0xFFFF0301)),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 25.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
