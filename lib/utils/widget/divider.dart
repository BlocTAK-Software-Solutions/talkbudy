import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkbudy/utils/extention/extention.dart';

import '../const/app_color.dart';
import 'custom_text.dart';

class DividerWidget {
  static dividerOr() {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.dividerColor,
            thickness: 1.0,
          ),
        ),
        8.0.spaceX,
        CustomText(
          text: 'or',
          style: GoogleFonts.lato(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        8.0.spaceX,
        const Expanded(
          child: Divider(
            color: AppColors.dividerColor,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
