import 'package:intl/intl.dart';
import 'package:network_layar_intro/data/vos/country_vo/country_vo.dart';

import 'package:network_layar_intro/data/vos/global_vo/global_vo.dart';
import 'package:network_layar_intro/network/data_agent/covid_data_agent.dart';
import 'package:network_layar_intro/network/data_agent/covid_data_agent_impl.dart';

import 'covid_model.dart';

class CovidModelImpl extends CovidModel {
  CovidModelImpl._();

  static final CovidModelImpl _singleton = CovidModelImpl._();

  factory CovidModelImpl() => _singleton;

  final CovidDataAgent _covidDataAgent = CovidDataAgentImpl();

  @override
  Future<List<CountriesVO>?> getCountries() => _covidDataAgent.getCountryList();

  @override
  Future<GlobalVO?> getGlobals() => _covidDataAgent.getGlobal().then((value) {
        final global = value;
        DateFormat dateFormat = DateFormat('yyyy-MM-dd, HH:mm a');
        String globalDate = global?.date ?? '';
        final convertDateObject = DateTime.parse(globalDate);
        global?.date = dateFormat.format(convertDateObject);
        return global;
      });
}
