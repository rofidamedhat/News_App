import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/feature/home/data/model/get_news_response.dart';
import 'package:news_app/feature/home/data/repo/get_news_repo.dart';
import 'package:news_app/feature/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo getNewsRepo;
  HomeCubit(this.getNewsRepo) : super(const HomeState.initial());
  List<Articles> articles = [];
  List<String> categoryList = [
    'Science',
    'Sports',
    'Business',
    'General',
    'Health',
    'Entertainment',
  ];
  void getNewsData() async {
    emit(const HomeState.loading());
    final response = await getNewsRepo.getNewsData();

    response.when(
      success: (data) {
        emit(HomeState.success(data));
        articles = data.articles ?? [];
      },
      failure: (error) {
        emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
