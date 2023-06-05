import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkbudy/screen/auth/signup/signup_screen.dart';
import 'package:talkbudy/screen/onboarding/onboarding.dart';
import 'package:talkbudy/utils/const/app_color.dart';
import 'package:talkbudy/utils/const/app_image.dart';
import 'package:talkbudy/utils/const/app_text.dart';
import 'package:talkbudy/utils/extention/extention.dart';

import '../../../../utils/widget/custom_button.dart';
import '../../../../utils/widget/custom_text.dart';
import '../../../../utils/widget/divider.dart';
import '../../../../utils/widget/text_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            120.0.spaceY,
            CustomText(
              text: AppString.welcometoTalkbudy,
              style: TextStyle(
                fontFamily: 'ikka_rounded',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.splashBackground,
              ),
            ),
            24.0.spaceY,
            CustomTextField(
              hintText: AppString.emailaddress,
              textEditingController: emailController,
            ),
            10.0.spaceY,
            CustomTextField(
              hintText: AppString.password,
              textEditingController: passwordController,
              suffixWidget: const Icon(Icons.remove_red_eye_outlined),
              //  obscureText: controller.obscureText,
              //  suffixWidget: GestureDetector(
              //    onTap: () {
              //      setState(() {
              //        controller.obscureText = !controller.obscureText;
              //      });
              //    },
              //    child: (controller.obscureText == true)
              //        ? Image.asset(r'assets/icons/EyeClosed.png')
              //        : Image.asset(r'assets/icons/ph_eye-fill.png'),
              //  ),
            ),
            10.0.spaceY,
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                onTap: () {},
                text: AppString.forgotPassword,
                color: AppColors.lightGreen,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            20.0.spaceY,
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const OnBoardingScreen();
                    },
                  ),
                );
              },
              text: AppString.login,
              width: double.infinity,
              height: 50.sp,
            ),
            16.0.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: AppString.logintoSignUp,
                  color: AppColors.textColor2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreen();
                        },
                      ),
                    );
                  },
                  text: AppString.signUp,
                  color: AppColors.lightGreen,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            10.0.spaceY,
            DividerWidget.dividerOr(),
            16.0.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                containerIcon(ImageAssets.google),
                containerIcon(ImageAssets.facebook),
                containerIcon(ImageAssets.apple),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget containerIcon(String image) {
    return Container(
      height: 44.sp,
      width: 100.sp,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.dividerColor,
        ),
        borderRadius: BorderRadius.circular(
          14,
        ),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
