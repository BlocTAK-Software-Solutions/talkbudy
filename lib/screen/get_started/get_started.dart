import 'package:flutter/material.dart';
import 'package:talkbudy/screen/get_started/widget/body.dart';
import 'package:talkbudy/utils/const/app_color.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: GetStartedBody(),
    );
  }
}
