// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/styles.dart';
import 'package:news_app/core/helpers/spacing.dart';
import 'package:news_app/feature/home/ui/widgets/home_top_bar.dart';
import 'package:news_app/feature/home/ui/widgets/large_show_news_list_view.dart';
import 'package:news_app/feature/home/ui/widgets/small_show_news_list_view.dart';
import 'package:news_app/feature/home/ui/widgets/vertical_show_news_list_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning", style: TextStyles.font26BlackMedium),
                    Text("Explore The World With One Click",
                        style: TextStyles.font16BlackRegular),
                  ],
                ),
              ),
              verticalSpace(15),
              LargeShowNewsListView(),
              verticalSpace(15),
              Padding(
                padding: EdgeInsets.only(right: 15.h),
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: ListView.builder(
                    clipBehavior: Clip.antiAlias,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return SmallShowNewsListView();
                    },
                  ),
                ),
              ),
              verticalSpace(15),
              VerticalShowNewsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
