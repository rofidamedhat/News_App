import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/feature/home/ui/home.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        // initialRoute: isLoggedInUser ? Routes.home : Routes.login,
        // onGenerateRoute: appRouter.generateRoute,
        home: Home(),
      ),
    );
  }
}
