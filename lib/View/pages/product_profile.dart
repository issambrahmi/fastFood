import 'package:fast_food/constate/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CProductProfile extends StatelessWidget {
  const CProductProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              Container(
                height: 300.h,
                decoration: const BoxDecoration(),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/burger.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Beef Burger',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.sp, vertical: 5.sp),
                        width: 75.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: MyColors.primaryColor),
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Center(
                                    child: Text(
                                  '1',
                                  style: TextStyle(color: Colors.white),
                                ))),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  'crispy burger',
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: const Row(
                  children: [],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
