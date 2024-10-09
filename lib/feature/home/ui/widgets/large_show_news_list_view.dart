import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/styles.dart';

class LargeShowNewsListView extends StatelessWidget {
  const LargeShowNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      width: double.infinity,
      child: ListView.builder(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 280.w,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('Hello Newsssssssssssss',
                  style: TextStyles.font18WhiteRegular),
            ),
          );
        },
      ),
    );
  }
}
