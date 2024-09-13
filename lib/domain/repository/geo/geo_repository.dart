import 'dart:async';
import 'package:dio/dio.dart';
import 'package:countries_app/data/data.dart';
import 'package:countries_app/domain/domain.dart';

class GeoRepository extends GeoRepositoryInterface {
  GeoRepository({required this.dio});
  final Dio dio;
  @override
  Future<List<Article>> getCountries() async {
    try {
      final Response response = await dio.get(
        Endpoints.countries,
        queryParameters: {
          'languageCode': 'ru',
          'limit': '10',
          'offset': '0',
        },
      );
      final news = (response.data['data'] as List)
          .map((e) => Article.fromJson(e))
          .toList();
      return news;
    } on DioException catch (e) {
      throw e.message.toString();
    }
  }
}
