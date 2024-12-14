import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/styles.dart';
import 'package:news_app/feature/home/logic/cubit/home_cubit.dart';
import 'package:news_app/feature/home/logic/cubit/home_state.dart';

class LargeShowNewsListView extends StatelessWidget {
  const LargeShowNewsListView({
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
                height: 280.h,
                width: double.infinity,
                child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  scrollDirection: Axis.horizontal,
                  itemCount: getNewsData.articles!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      width: 280.w,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage(
                            getNewsData.articles![index].urlToImage ??
                                'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          getNewsData.articles![index].title!,
                          maxLines: 3,
                          overflow: TextOverflow.clip,
                          style: TextStyles.font18WhiteRegular,
                        ),
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
