import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_dto.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

const _okResponse = 'ok';
const _errorResponse = 'error';

@freezed

///The returned response body when sending an API request to newsapi.org
class NewsApiResponse with _$NewsApiResponse {
  const NewsApiResponse._();
  const factory NewsApiResponse({
    @JsonKey(name: 'totalResults') required int totalResults,
    required String status,
    required List<NewsDto> articles,
    String? message,
  }) = _NewsApiResponse;

  ///Creates a mock response with the number of [results] for articles
  factory NewsApiResponse.mockData({
    required int results,
    required bool isSuccessful,
  }) {
    final mockArticles = <NewsDto>[];
    for (int i = 0; i < results; i++) {
      final article = NewsDto.mockData(i + 1);
      mockArticles.add(article);
    }
    final mockResponse = NewsApiResponse(
      totalResults: isSuccessful ? results : 0,
      status: isSuccessful ? _okResponse : _errorResponse,
      articles: isSuccessful ? mockArticles : [],
      message: isSuccessful ? null : 'Forbidden',
    );
    return mockResponse;
  }

  ///Creates a [NewsApiResponse] model from [json]
  factory NewsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsApiResponseFromJson(json);
}
