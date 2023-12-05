import 'package:flutter/material.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/repositories/movies_repository.dart';

class MovieController {
  final MovieRepository _movieRepository;
  MovieController(this._movieRepository) {
    fetch();
  }
  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);
  fetch() async {
    movies.value = await _movieRepository.getMovies();
  }
}
