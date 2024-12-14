import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/networking/api_service.dart';
import 'package:news_app/feature/home/data/repo/get_news_repo.dart';
import 'package:news_app/feature/home/logic/cubit/home_cubit.dart';

import '../../core/networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  // Dio & ApiService
  // ignore: unused_local_variable
  Dio dio = DioFactory.getDio();
  getIt.registerFactory<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt())..getNewsData());
}
