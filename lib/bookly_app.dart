import 'package:bookly_app/core/theming/app_colors.dart';
import 'package:bookly_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.mainColor,
          appBarTheme:const AppBarTheme(
            color: Colors.transparent,
            elevation: 0
          )
        ),
      ),
    );
  }
}
