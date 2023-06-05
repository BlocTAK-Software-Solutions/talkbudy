import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkbudy/utils/const/app_color.dart';
import 'package:talkbudy/utils/const/app_image.dart';

import '../get_started/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    setState(
      () {
        Timer(
          const Duration(seconds: 2),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const GetStartedScreen();
                },
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackground,
      body: Center(
        child: Image.asset(
          ImageAssets.talkBudy,
          height: 200.sp,
          width: 200.sp,
        ),
      ),
    );
  }
}
