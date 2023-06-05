import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkbudy/utils/const/app_color.dart';
import 'package:talkbudy/utils/const/app_text.dart';
import 'package:talkbudy/utils/extention/extention.dart';
import 'package:talkbudy/utils/widget/custom_button.dart';
import 'package:talkbudy/utils/widget/custom_text.dart';

import '../../../utils/const/app_image.dart';

class SecondRecordingBody extends StatefulWidget {
  const SecondRecordingBody({super.key});

  @override
  State<SecondRecordingBody> createState() => _SecondRecordingBodyState();
}

class _SecondRecordingBodyState extends State<SecondRecordingBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          24.0.spaceY,
          CustomText(
            text: AppString.recordingTitle1,
            color: AppColors.textColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          Container(
            height: 16.sp,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.dividerColor,
            ),
          ),
          Container(
            height: 310.sp,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.dividerColor, width: 2.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppString.recordingTitle2,
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: AppString.recordingTitle3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'ikka_rounded',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.splashBackground,
                  ),
                ),
                16.0.spaceY,
                const Divider(
                  color: AppColors.lightGreen,
                  endIndent: 50,
                  indent: 50,
                  thickness: 2,
                ),
                16.0.spaceY,
                rowContainer(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: AppString.pastRecordings,
              style: TextStyle(
                fontFamily: 'ikka_rounded',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.splashBackground,
              ),
            ),
          ),
          const Divider(
            color: AppColors.dividerColor,
            thickness: 1,
          ),
          Row(
            children: [
              Container(
                height: 40.sp,
                width: 40.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.lightGreen,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: AppColors.shadowlightGreen),
                  ],
                ),
                child: Image.asset(ImageAssets.play),
              ),
              4.0.spaceX,
              Flexible(
                child: CustomText(
                  textAlign: TextAlign.start,
                  text: AppString.recording2Description,
                  style: GoogleFonts.lato(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              2.0.spaceX,
              Image.asset(ImageAssets.delete),
            ],
          ),
          16.0.spaceY,
          CustomButton(
            onPressed: () {},
            text: AppString.next,
            textColor: AppColors.buttontext,
            shadowColor: AppColors.transparent,
            backgroundColor: AppColors.dividerColor,
            width: double.infinity,
          )
        ],
      ),
    );
  }

  Widget rowContainer() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 111.sp,
        height: 50.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.lightGreen,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              color: AppColors.shadowlightGreen,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.dot),
            6.0.spaceX,
            CustomText(
              text: AppString.record,
              style: TextStyle(
                fontFamily: 'ikka_rounded',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
