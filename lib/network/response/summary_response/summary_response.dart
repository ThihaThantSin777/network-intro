import 'package:json_annotation/json_annotation.dart';
import 'package:network_layar_intro/data/vos/country_vo/country_vo.dart';

import '../../../data/vos/global_vo/global_vo.dart';

part 'summary_response.g.dart';

@JsonSerializable()
class SummaryResponse {
  @JsonKey(name: 'ID')
  String? id;

  @JsonKey(name: 'Message')
  String? message;

  @JsonKey(name: 'Global')
  GlobalVO? global;

  @JsonKey(name: 'Countries')
  List<CountriesVO>? countries;

  @JsonKey(name: 'Date')
  String? date;

  SummaryResponse(
      {this.id, this.message, this.global, this.countries, this.date});

  factory SummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SummaryResponseFromJson(json);
}
