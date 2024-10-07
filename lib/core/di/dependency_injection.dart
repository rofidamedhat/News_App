import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../core/networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  // ignore: unused_local_variable
  Dio dio = DioFactory.getDio();
}
