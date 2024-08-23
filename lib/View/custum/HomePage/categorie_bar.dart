import 'package:fast_food/constate/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CCategorieBar extends StatelessWidget {
  const CCategorieBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categorie = ['Burger', 'Pizza', 'Dessert', 'All Menu'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categorie',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 35.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categorie.length,
              separatorBuilder: (context, index) {
                return SizedBox(width: 10.w);
              },
              itemBuilder: (context, index) {
                return Container(
                  width: 72.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.grey.withOpacity(0.2),
                      Colors.black.withOpacity(0.3)
                    ]),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Center(
                    child: Text(
                      categorie[index],
                      style: TextStyle(
                          color:
                              index == 0 ? MyColors.primaryColor : Colors.white,
                          fontWeight: FontWeight.bold , fontSize: 12.sp),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
