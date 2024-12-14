import 'package:dio/dio.dart';
import 'package:news_app/core/networking/api_constants.dart';
import 'package:news_app/feature/home/data/model/get_news_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET(ApiConstants.homeEP)
  Future<GetNewsResponse> getNewsModel();
}
