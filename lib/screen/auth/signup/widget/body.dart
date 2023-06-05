import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkbudy/screen/auth/login/login_screen.dart';
import 'package:talkbudy/utils/const/app_color.dart';
import 'package:talkbudy/utils/const/app_image.dart';
import 'package:talkbudy/utils/const/app_text.dart';
import 'package:talkbudy/utils/extention/extention.dart';

import '../../../../utils/widget/custom_button.dart';
import '../../../../utils/widget/custom_text.dart';
import '../../../../utils/widget/divider.dart';
import '../../../../utils/widget/text_field.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController repeatPasswordController;
  late TextEditingController fullNameController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    repeatPasswordController = TextEditingController();
    fullNameController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    fullNameController.dispose();
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
            70.0.spaceY,
            CustomText(
              text: AppString.createYourAccount,
              style: TextStyle(
                fontFamily: 'ikka_rounded',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.splashBackground,
              ),
            ),
            16.0.spaceY,
            CircleAvatar(
              maxRadius: 50.sp,
              backgroundColor: AppColors.dividerColor,
            ),
            16.0.spaceY,
            CustomTextField(
              hintText: AppString.fullName,
              textEditingController: emailController,
            ),
            8.0.spaceY,
            CustomTextField(
              hintText: AppString.emailaddress,
              textEditingController: emailController,
            ),
            8.0.spaceY,
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
            8.0.spaceY,
            CustomTextField(
              hintText: AppString.repeatPassword,
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
            16.0.spaceY,
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
              text: AppString.register,
              width: double.infinity,
              height: 50.sp,
            ),
            16.0.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: AppString.alreadyAnAccount,
                  color: AppColors.textColor2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  text: AppString.alreadylogin,
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
            ),
            36.0.spaceY,
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
