import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/colors.dart';
import 'package:news_app/core/config/theming/styles.dart';
import 'package:news_app/core/helpers/spacing.dart';
import 'package:news_app/feature/home/logic/cubit/home_cubit.dart';
import 'package:news_app/feature/home/logic/cubit/home_state.dart';

class VerticalShowNewsListView extends StatelessWidget {
  const VerticalShowNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            success: (getNewsData) {
              return SizedBox(
                height: 500.h,
                width: double.infinity,
                child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  scrollDirection: Axis.vertical,
                  itemCount: getNewsData.articles!.length,
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
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage(
                                  getNewsData.articles![index].urlToImage ??
                                      'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          horizontalSpace(10),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  getNewsData.articles![index].content ??
                                      '${getNewsData.articles![index].title}',
                                  style: TextStyles.font16Blackmedium,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                                verticalSpace(5),
                                Row(
                                  children: [
                                    Text(
                                      'author : ${getNewsData.articles![index].author != null && getNewsData.articles![index].author!.length > 10 ? "${getNewsData.articles![index].author!.substring(0, 10)}..." : getNewsData.articles![index].author}',
                                      
                                      style: TextStyles.font13Greylight,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                    ),
                                    const Spacer(),
                                    Text('Today ,8:28',
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
            },
            error: (errorHandler) => Text('error $errorHandler'),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }
}
