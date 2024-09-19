import 'package:json_annotation/json_annotation.dart';
part 'country.g.dart';

@JsonSerializable()
class Country {
  Country({
    required this.code,
    required this.currencyCodes,
    required this.name,
    required this.wikiDataId,
  });

  @JsonKey(name: '_id')
  final String code;
  final String name;
  final List<String> currencyCodes;
  final String wikiDataId;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
