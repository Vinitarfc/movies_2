import 'package:movies_2/models/movies_model.dart';

abstract class MoviesRepository {
  Future<Movies> getMovies();
}
