import 'package:flutter/material.dart';
import 'package:talkbudy/screen/first_recording/widget/body.dart';

class FirstRecordingScreen extends StatelessWidget {
  const FirstRecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstRecordingBody(),
    );
  }
}
