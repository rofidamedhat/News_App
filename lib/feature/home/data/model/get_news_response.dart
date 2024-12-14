import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_news_response.g.dart';

@JsonSerializable()
class GetNewsResponse {
  List<Articles>? articles;

  GetNewsResponse({required this.articles});
  factory GetNewsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNewsResponseFromJson(json);
}

@JsonSerializable()
class Articles {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  Articles({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);
}
