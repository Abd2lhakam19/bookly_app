import 'package:bookly_app/core/helper/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
         alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          //  color: Colors.white,
          child: Image.asset(
            AppAssets.bookImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 60,
          right: 50,
          child: Container(
            alignment: Alignment.center,
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: const Color(0xffffffff).withOpacity(0.3),
                shape: BoxShape.circle),
            child: Image.asset(AppAssets.play),
          ),
        ),
      ],
    );
  }
}
