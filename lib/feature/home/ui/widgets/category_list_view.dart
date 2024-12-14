import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/colors.dart';
import 'package:news_app/core/config/theming/styles.dart';
import 'package:news_app/feature/home/logic/cubit/home_cubit.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: SizedBox(
        height: 40.h,
        width: double.infinity,
        child: ListView.builder(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.horizontal,
          itemCount: context.read<HomeCubit>().categoryList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: ColorsManager.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                context.read<HomeCubit>().categoryList[index],
                textAlign: TextAlign.center,
                style: TextStyles.font18WhiteMedium,
              ),
            );
          },
        ),
      ),
    );
  }
}
