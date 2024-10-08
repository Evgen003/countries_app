import 'dart:async';
import 'package:countries_app/domain/domain.dart';

abstract class GeoRepositoryInterface {
  Future<List<Country>> getCountries(int page);
}
