import 'package:network_layar_intro/data/model/movie_model.dart';
import 'package:network_layar_intro/data/vos/movie_vo/result_vo.dart';
import 'package:network_layar_intro/network/data_agent/movie_data_agent.dart';
import 'package:network_layar_intro/network/data_agent/movie_data_agent_impl.dart';
import 'package:network_layar_intro/network/response/movie_details_response/movie_details_response.dart';

class MovieModelImpl extends MovieModel {
  MovieModelImpl._();

  static final MovieModelImpl _singleton = MovieModelImpl._();

  factory MovieModelImpl() => _singleton;

  final MovieDataAgent _movieDataAgent = MovieDataAgentImpl();

  @override
  Future<MovieDetailsResponse?> getMovieDetails(int movieID) =>
      _movieDataAgent.getMovieDetails(movieID);

  @override
  Future<List<MovieVO>?> getMoviesList() => _movieDataAgent.getMoviesList();
}
