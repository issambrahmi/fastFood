import 'package:fast_food/constate/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CSearchBar extends StatelessWidget {
  const CSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.grey.withOpacity(0.2),
            Colors.black.withOpacity(0.3)
          ]),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
          autofocus: false,
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.white),
              contentPadding: EdgeInsets.symmetric(vertical: 10.h),
              border: InputBorder.none,
              prefixIcon: const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              suffixIcon: Container(
                margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
                width: 15.sp,
                height: 15.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.primaryColor),
                child: const Icon(
                  Icons.filter_list_outlined,
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
