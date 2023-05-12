import 'package:dio/dio.dart';
import 'package:network_layar_intro/data/vos/country_vo/country_vo.dart';
import 'package:network_layar_intro/data/vos/global_vo/global_vo.dart';
import 'package:network_layar_intro/network/data_agent/covid_data_agent.dart';

import '../api/covid_api.dart';

class CovidDataAgentImpl extends CovidDataAgent {
  late CovidAPI _api;

  CovidDataAgentImpl._() {
    _api = CovidAPI(Dio());
  }

  static final CovidDataAgentImpl _singleton = CovidDataAgentImpl._();

  factory CovidDataAgentImpl() => _singleton;

  @override
  Future<List<CountriesVO>?> getCountryList() => _api
      .getSummaryResponse()
      .asStream()
      .map((event) => event.countries)
      .first;

  @override
  Future<GlobalVO?> getGlobal() =>
      _api.getSummaryResponse().asStream().map((event) => event.global).first;
}
