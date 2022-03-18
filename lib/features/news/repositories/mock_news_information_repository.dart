import 'package:injectable/injectable.dart';
import 'package:weather_module/features/news/repositories/news_information_repository.dart';
import 'package:mocktail/mocktail.dart';

///Mock class for news information repository
@LazySingleton(as: INewsInformationRepository, env: [Environment.test])
class MockNewsInformationRepository extends Mock
    implements NewsInformationRepository {}
