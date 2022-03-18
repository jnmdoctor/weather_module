import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_module/features/news/models/news_response.dart';
import 'package:weather_module/secrets.dart';

part 'news_information_client.g.dart';

//* key
const _page = 'page';

//* URLs
const _baseUrl = 'https://newsapi.org/';
const _newsHeadlinesEndpoint = 'v2/top-headlines?apiKey=$newsApiKey&country=ph';

@RestApi(baseUrl: _baseUrl)
abstract class NewsInformationClient {
  ///Constructor that accepts an instance of [Dio].
  factory NewsInformationClient(Dio dio) = _NewsInformationClient;

  @GET(_newsHeadlinesEndpoint)
  //Gets a list of headlines news from the backend
  Future<NewsApiResponse> getHeadlines({
    @Query(_page) int page = 1,
  });
}
