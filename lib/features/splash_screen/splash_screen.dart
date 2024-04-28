import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:bookly_app/core/helper/app_assets.dart';
import 'package:bookly_app/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>HomeScreen() ,));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeftBig(
        child: Center(
          child: Image.asset(AppAssets.logo),
        ),
      ),
    );
  }
}
