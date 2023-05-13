import 'package:dio/dio.dart';
import 'package:network_layar_intro/constant/api_constant.dart';
import 'package:network_layar_intro/network/response/movie_details_response/movie_details_response.dart';
import 'package:retrofit/http.dart';

import '../../response/movie_response/movie_response.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: kMovieBaseURL)
abstract class MovieAPI {
  factory MovieAPI(Dio dio) => _MovieAPI(dio);

  @GET(kGetNowPlayingMoviesEndPoint)
  Future<MovieResponse> getNowPlayingMovieResponse(
    @Query(kQueryParamsApiKey) String apiKey,
  );

  @GET(kGetMovieDetailsEndPoint)
  Future<MovieDetailsResponse> getMovieDetailsResponse(
      @Query(kQueryParamsApiKey) String apiKey,
      @Path(kPathParameterMovieID) int movieID);
}
