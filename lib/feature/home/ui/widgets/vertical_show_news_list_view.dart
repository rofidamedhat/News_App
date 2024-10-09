import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/colors.dart';
import 'package:news_app/core/config/theming/styles.dart';
import 'package:news_app/core/helpers/spacing.dart';

class VerticalShowNewsListView extends StatelessWidget {
  const VerticalShowNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      width: double.infinity,
      child: ListView.builder(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.vertical,
        itemCount: 15,
        itemBuilder: (context, index) {
          return Container(
            height: 120.h,
            decoration: BoxDecoration(
              color: ColorsManager.greyDc,
              borderRadius: BorderRadius.circular(15),
            ),
            margin:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            padding:
                EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.w, vertical: 8.w),
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                horizontalSpace(10),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'helo world helo world helo world helo world helo world helo world helo world helo world helo world ',
                        style: TextStyles.font16Blackmedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      verticalSpace(5),
                      Row(
                        children: [
                          Text('author : smith',
                              style: TextStyles.font13Greylight),
                          const Spacer(),
                          Text('Today ,8:28 AM',
                              style: TextStyles.font13Greylight),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}