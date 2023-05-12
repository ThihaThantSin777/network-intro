import 'package:network_layar_intro/data/vos/country_vo/country_vo.dart';

import '../../data/vos/global_vo/global_vo.dart';

abstract class CovidDataAgent {
  Future<GlobalVO?> getGlobal();

  Future<List<CountriesVO>?> getCountryList();
}
