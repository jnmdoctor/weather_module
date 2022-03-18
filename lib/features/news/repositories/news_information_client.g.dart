// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_information_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NewsInformationClient implements NewsInformationClient {
  _NewsInformationClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://newsapi.org/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<NewsApiResponse> getHeadlines({page = 1}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        NewsApiResponse>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'v2/top-headlines?apiKey=9b59bf9bb2d34e128ee2c3bdbea925bf&country=ph',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NewsApiResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
