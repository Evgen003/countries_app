// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      code: json['code'] as String,
      currencyCodes: (json['currencyCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      wikiDataId: json['wikiDataId'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'code': instance.code,
      'currencyCode': instance.currencyCodes,
      'name': instance.name,
      'wikiDataId': instance.wikiDataId,
    };
