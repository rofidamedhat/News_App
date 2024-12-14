import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/di/dependency_injection.dart';
import 'package:news_app/core/routing/routes.dart';
import 'package:news_app/feature/home/logic/cubit/home_cubit.dart';
import 'package:news_app/feature/home/ui/home.dart';

class AppRouter {
  Route generateRoutes(RouteSettings setting) {
    switch (setting.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getNewsData(),
            child: const Home(),
          ),
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('There is not Routed for ${setting.name}'),
                  ),
                ));
    }
  }
}
