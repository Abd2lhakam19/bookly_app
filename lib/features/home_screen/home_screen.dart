import 'package:bookly_app/core/helper/app_assets.dart';
import 'package:bookly_app/features/home_screen/widgets/best_seller.dart';
import 'package:bookly_app/features/home_screen/widgets/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppAssets.miniLogo),
        leadingWidth: 100.w,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset(AppAssets.search),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 47.h,
            ),
            const BookList(),
            Text(
              "Best Seller",
              style: TextStyle(color: Colors.white, fontSize: 18.sp),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const BestSeller();
                  },
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                        height: 10.h,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
