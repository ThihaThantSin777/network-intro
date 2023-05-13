import '../../data/vos/movie_vo/result_vo.dart';
import '../response/movie_details_response/movie_details_response.dart';

abstract class MovieDataAgent {
  Future<List<MovieVO>?> getMoviesList();

  Future<MovieDetailsResponse?> getMovieDetails(int movieID);
}
