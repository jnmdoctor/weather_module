import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:weather_module/features/news/models/news_model.dart';
import 'package:weather_module/features/news/repositories/news_failure.dart';
import 'package:weather_module/features/news/repositories/news_information_client.dart';

const _error = 'error';
const _ok = 'ok';

///Repository for interacting with the NewsApi.org REST API
abstract class INewsInformationRepository {
  ///Gets the top Philippine headlines from newsapi.org
  Future<Either<NewsFailure, KtList<NewsModel>>> getTopNewsInformations();
}

@LazySingleton(as: INewsInformationRepository, env: [Environment.prod])
class NewsInformationRepository implements INewsInformationRepository {
  final NewsInformationClient client;

  const NewsInformationRepository({
    required this.client,
  });

  @override
  Future<Either<NewsFailure, KtList<NewsModel>>>
      getTopNewsInformations() async {
    try {
      final response = await client.getHeadlines();

      if (response.status == _ok) {
        final newsModels =
            response.articles.map((dto) => dto.toModel()).toList();
        return Right(newsModels.toImmutableList());
      } else if (response.status == _error) {
        return left(NewsFailure.error(response.message!));
      } else {
        return left(const NewsFailure.unknown());
      }
    } on Exception catch (e) {
      return left(NewsFailure.unknown(message: e.toString()));
    }
  }
}
