import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/di/dependency_injection.dart';
import 'package:news_app/core/helpers/bloc_observer.dart';
import 'package:news_app/news_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await setupDI();
  Bloc.observer = MyBlocObserver();

  runApp(const NewsApp());
}
