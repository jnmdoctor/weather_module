import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_module/features/weather/models/location_dto.dart';
import 'package:weather_module/features/weather/models/weather_response.dart';

part 'weather_information_client.g.dart';

//* key
const query = 'query';

//* URLs
const _baseUrl = 'https://www.metaweather.com';
const _locationStringSearchEndpoint = '/api/location/search/';
const _locationIdSearchEndpoint = '/api/location';

@RestApi(baseUrl: _baseUrl)
abstract class WeatherInformationClient {
  ///Constructor that accepts an instance of [Dio].
  factory WeatherInformationClient(Dio dio) = _WeatherInformationClient;

  @GET(_locationStringSearchEndpoint)
  Future<HttpResponse<List<LocationDto>>> getLocationByCity({
    @Query(query) required String city,
  });

  @GET('$_locationIdSearchEndpoint/{id}')
  Future<WeatherApiInformationResponse> getWeatherById({
    @Path() required int id,
  });
}
