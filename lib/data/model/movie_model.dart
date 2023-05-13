import '../../data/vos/movie_vo/result_vo.dart';
import '../../network/response/movie_details_response/movie_details_response.dart';

abstract class MovieModel {
  Future<List<MovieVO>?> getMoviesList();

  Future<MovieDetailsResponse?> getMovieDetails(int movieID);
}
