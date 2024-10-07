import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/colors.dart';
import 'package:news_app/core/config/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackRegular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle font18Grey79Regular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey79,
  );
  static TextStyle font16BlackRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.black,
  );
  static TextStyle font26BlackMedium = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.black,
  );
}
