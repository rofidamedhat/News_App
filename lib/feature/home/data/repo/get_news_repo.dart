import 'package:news_app/core/networking/api_error_handler.dart';
import 'package:news_app/core/networking/api_result.dart';
import 'package:news_app/core/networking/api_service.dart';
import 'package:news_app/feature/home/data/model/get_news_response.dart';

class HomeRepo {
  final ApiService apiServices;

  HomeRepo(this.apiServices);

  Future<ApiResults<GetNewsResponse>> getNewsData() async {
    try {
      final response = await apiServices.getNewsModel();
      
      return ApiResults.success(response);
    } catch (e) {
      return ApiResults.failure(ErrorHandler.handle(e));
    }
  }
}
