import 'package:flutter/material.dart';
import 'package:network_layar_intro/data/model/movie_model.dart';
import 'package:network_layar_intro/data/model/movie_model_impl.dart';
import 'package:network_layar_intro/pages/home_page.dart';

void main() {
  runApp(const MyApp());

  MovieModel movieModel = MovieModelImpl();
  movieModel.getMoviesList().then((value) {
    debugPrint("Movie List===>$value");
  }).catchError((error) => debugPrint("Get Movies error===>$error"));

  movieModel.getMovieDetails(1020896).then((value) {
    debugPrint("Movie Details===>$value");
  }).catchError((error) => debugPrint(" Movies Details error===>$error"));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
