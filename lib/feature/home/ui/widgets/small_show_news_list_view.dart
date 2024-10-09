import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/styles.dart';

class SmallShowNewsListView extends StatelessWidget {
  const SmallShowNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      padding: EdgeInsets.symmetric(
          horizontal: 8.w, vertical: 5.h),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text('Hello ',
          textAlign: TextAlign.center,
          style: TextStyles.font20BlackRegular),
    );
  }
}
