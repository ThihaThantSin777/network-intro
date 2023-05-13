import 'package:dio/dio.dart';
import 'package:network_layar_intro/constant/api_constant.dart';
import 'package:network_layar_intro/data/vos/movie_vo/result_vo.dart';
import 'package:network_layar_intro/network/api/movie_api/movie_api.dart';
import 'package:network_layar_intro/network/response/movie_details_response/movie_details_response.dart';

import 'movie_data_agent.dart';

class MovieDataAgentImpl extends MovieDataAgent {
  late MovieAPI _api;

  MovieDataAgentImpl._() {
    _api = MovieAPI(Dio());
  }

  static final MovieDataAgentImpl _singleton = MovieDataAgentImpl._();

  factory MovieDataAgentImpl() => _singleton;

  @override
  Future<MovieDetailsResponse?> getMovieDetails(int movieID) =>
      _api.getMovieDetailsResponse(kApiKey, movieID);

  @override
  Future<List<MovieVO>?> getMoviesList() => _api
      .getNowPlayingMovieResponse(kApiKey)
      .asStream()
      .map((event) => event.results)
      .first;
}
