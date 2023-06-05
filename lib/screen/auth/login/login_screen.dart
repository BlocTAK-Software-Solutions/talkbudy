import 'package:flutter/material.dart';
import 'package:talkbudy/screen/auth/login/widget/body.dart';
import 'package:talkbudy/utils/const/app_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: LoginBody(),
    );
  }
}
