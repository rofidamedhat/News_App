import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/routing/app_router.dart';
import 'package:news_app/core/routing/routes.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.home,
        onGenerateRoute: AppRouter().generateRoutes,
      ),
    );
  }
}
