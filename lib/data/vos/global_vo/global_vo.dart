import 'package:json_annotation/json_annotation.dart';

part 'global_vo.g.dart';

@JsonSerializable()
class GlobalVO {
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

  GlobalVO(
      {this.newConfirmed,
      this.totalConfirmed,
      this.newDeaths,
      this.totalDeaths,
      this.newRecovered,
      this.totalRecovered,
      this.date});

  factory GlobalVO.fromJson(Map<String, dynamic> json) =>
      _$GlobalVOFromJson(json);

  @override
  String toString() {
    return 'GlobalVO{newConfirmed: $newConfirmed, totalConfirmed: $totalConfirmed, newDeaths: $newDeaths, totalDeaths: $totalDeaths, newRecovered: $newRecovered, totalRecovered: $totalRecovered, date: $date}';
  }
}
