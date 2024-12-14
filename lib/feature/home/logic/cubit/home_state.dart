import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/feature/home/data/model/get_news_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(GetNewsResponse data) = Success<T>;
  const factory HomeState.error({required String error}) = Error;
}
