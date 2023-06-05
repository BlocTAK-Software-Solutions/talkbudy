import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkbudy/screen/auth/login/login_screen.dart';
import 'package:talkbudy/utils/const/app_image.dart';
import 'package:talkbudy/utils/extention/extention.dart';
import 'package:talkbudy/utils/widget/custom_button.dart';

import '../../../utils/const/app_color.dart';
import '../../../utils/const/app_text.dart';
import '../../../utils/widget/custom_text.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Expanded(child: SizedBox()),
          Image.asset(
            ImageAssets.getStart,
            height: 170,
            width: 170,
          ),
          CustomText(
            text: AppString.getStartDescription,
            color: AppColors.textColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
          const Expanded(child: SizedBox()),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
            text: AppString.getStarted,
            width: double.infinity,
          ),
          10.0.spaceY,
          CustomButton(
            onPressed: () {},
            text: AppString.alreadyAccount,
            backgroundColor: AppColors.white,
            shadowColor: AppColors.transparent,
            borderColor: AppColors.textColor,
            textColor: AppColors.lightGreen,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
