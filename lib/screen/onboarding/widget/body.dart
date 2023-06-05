import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkbudy/screen/first_recording/recording_screen.dart';
import 'package:talkbudy/utils/const/app_image.dart';
import 'package:talkbudy/utils/const/app_text.dart';
import 'package:talkbudy/utils/extention/extention.dart';
import 'package:talkbudy/utils/widget/custom_button.dart';
import 'package:talkbudy/utils/widget/custom_text.dart';

import '../../../utils/const/app_color.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Expanded(child: SizedBox()),
          CustomText(
            text: AppString.onboardDescription,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ikka_rounded',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.splashBackground,
            ),
          ),
          26.0.spaceY,
          containerWidget(
            AppColors.lightGreen,
            AppColors.white,
            AppString.recordMyVoice,
            ImageAssets.record,
          ),
          16.0.spaceY,
          containerWidget(
            AppColors.dividerColor,
            AppColors.splashBackground,
            AppString.uploadRecordings,
            ImageAssets.upload,
          ),
          const Expanded(child: SizedBox()),
          CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FirstRecordingScreen();
                    },
                  ),
                );
              },
              text: AppString.Continue,
              width: double.infinity),
        ],
      ),
    );
  }

  Widget containerWidget(
      Color color, Color textColor, String text, String image) {
    return Container(
      height: 132.sp,
      width: 211.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          12.0.spaceY,
          CustomText(
            text: text,
            color: textColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
