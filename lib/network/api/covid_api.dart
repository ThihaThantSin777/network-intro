import 'package:dio/dio.dart';
import 'package:network_layar_intro/constant/api_constant.dart';
import 'package:retrofit/http.dart';

import '../response/summary_response/summary_response.dart';

part 'covid_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class CovidAPI {
  factory CovidAPI(Dio dio) => _CovidAPI(dio);

  @GET(kSummaryEndPoint)
  Future<SummaryResponse> getSummaryResponse();
}
