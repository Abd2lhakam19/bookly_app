import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/app_assets.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 113.h,
          width: 71.w,
          child: Image.asset(AppAssets.bookImage),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Harry Potter\nand the goplet of fire",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "j.k. Rowling",
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              children: [
                Text(
                  "19.99 ",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 38.w,
                ),
                Image.asset(AppAssets.star),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "4.8",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
