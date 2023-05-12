import 'package:network_layar_intro/data/vos/country_vo/country_vo.dart';

import '../vos/global_vo/global_vo.dart';

abstract class CovidModel {
  Future<GlobalVO?> getGlobals();

  Future<List<CountriesVO>?> getCountries();
}
