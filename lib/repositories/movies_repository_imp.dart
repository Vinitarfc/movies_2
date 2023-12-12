import 'package:movies_2/core/domain/services/http_service.dart';
import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/repositories/movies_repository.dart';
import 'package:movies_2/core/utils/apis.utils.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final HttpService _httpService;

  MoviesRepositoryImp(this._httpService);
  @override
  Future<Movies> getMovies() async {
    await Future.delayed(const Duration(seconds: 3));
    var result = await _httpService.get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
