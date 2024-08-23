import 'package:fast_food/constate/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CLocationBar extends StatelessWidget {
  const CLocationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 38.h,
            width: double.infinity,
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: MyColors.primaryColor,
                ),
                SizedBox(width: 5.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Now',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                    Text(
                      'Algeria, Tlemcen',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          );
  }
}