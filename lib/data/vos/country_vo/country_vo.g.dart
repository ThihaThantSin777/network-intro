// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountriesVO _$CountriesVOFromJson(Map<String, dynamic> json) => CountriesVO(
      id: json['ID'] as String?,
      country: json['Country'] as String?,
      countryCode: json['CountryCode'] as String?,
      slug: json['Slug'] as String?,
      newConfirmed: json['NewConfirmed'] as int?,
      totalConfirmed: json['TotalConfirmed'] as int?,
      newDeaths: json['NewDeaths'] as int?,
      totalDeaths: json['TotalDeaths'] as int?,
      newRecovered: json['NewRecovered'] as int?,
      totalRecovered: json['TotalRecovered'] as int?,
      date: json['Date'] as String?,
    );

Map<String, dynamic> _$CountriesVOToJson(CountriesVO instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Country': instance.country,
      'CountryCode': instance.countryCode,
      'Slug': instance.slug,
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
      'Date': instance.date,
    };
