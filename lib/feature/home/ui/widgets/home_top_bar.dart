import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/config/theming/colors.dart';
import 'package:news_app/core/config/theming/styles.dart';
import 'package:news_app/core/helpers/spacing.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsManager.greyEC,
                  width: 2,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsManager.grey,
                  width: 2,
                ),
              ),
              hintStyle: TextStyles.font18Grey79Regular,
              hintText: 'Search Now',
              suffixIcon: const Icon(Icons.search, size: 20),
              fillColor: ColorsManager.grey,
              filled: true,
            ),
          ),
        ),
        horizontalSpace(5),
        const Icon(
          Icons.menu,
          size: 30,
        )
      ],
    );
  }
}
