import 'package:flutter/material.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/repositories/movies_repository.dart';

class MovieController {
  final MovieRepository _movieRepository;
  MovieController(this._movieRepository) {
    fetch();
  }
  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);
  Movies? _cacheMovies;

  onChanged(String value) {
    List<Movie> list = _cacheMovies!.listMovies
        .where((e) => e.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();
    movies.value = movies.value!.copyWith(listMovies: list);
  }

  fetch() async {
    movies.value = await _movieRepository.getMovies();
    _cacheMovies = movies.value;
  }
}
