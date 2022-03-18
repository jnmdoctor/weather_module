import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';

@freezed

///Model containing the title and url of a news item from from the backend.
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required String title,
    required String url,
  }) = _NewsModel;
}
