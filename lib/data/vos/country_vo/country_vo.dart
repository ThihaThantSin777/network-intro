import 'package:json_annotation/json_annotation.dart';

part 'country_vo.g.dart';

@JsonSerializable()
class CountriesVO {
  @JsonKey(name: 'ID')
  String? id;

  @JsonKey(name: 'Country')
  String? country;

  @JsonKey(name: 'CountryCode')
  String? countryCode;

  @JsonKey(name: 'Slug')
  String? slug;

  @JsonKey(name: 'NewConfirmed')
  int? newConfirmed;

  @JsonKey(name: 'TotalConfirmed')
  int? totalConfirmed;

  @JsonKey(name: 'NewDeaths')
  int? newDeaths;

  @JsonKey(name: 'TotalDeaths')
  int? totalDeaths;

  @JsonKey(name: 'NewRecovered')
  int? newRecovered;

  @JsonKey(name: 'TotalRecovered')
  int? totalRecovered;

  @JsonKey(name: 'Date')
  String? date;

  CountriesVO({
    this.id,
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  factory CountriesVO.fromJson(Map<String, dynamic> json) =>
      _$CountriesVOFromJson(json);

  @override
  String toString() {
    return 'CountriesVO{id: $id, country: $country, countryCode: $countryCode, slug: $slug, newConfirmed: $newConfirmed, totalConfirmed: $totalConfirmed, newDeaths: $newDeaths, totalDeaths: $totalDeaths, newRecovered: $newRecovered, totalRecovered: $totalRecovered, date: $date}';
  }
}
