// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryResponse _$SummaryResponseFromJson(Map<String, dynamic> json) =>
    SummaryResponse(
      id: json['ID'] as String?,
      message: json['Message'] as String?,
      global: json['Global'] == null
          ? null
          : GlobalVO.fromJson(json['Global'] as Map<String, dynamic>),
      countries: (json['Countries'] as List<dynamic>?)
          ?.map((e) => CountriesVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['Date'] as String?,
    );

Map<String, dynamic> _$SummaryResponseToJson(SummaryResponse instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Message': instance.message,
      'Global': instance.global,
      'Countries': instance.countries,
      'Date': instance.date,
    };
