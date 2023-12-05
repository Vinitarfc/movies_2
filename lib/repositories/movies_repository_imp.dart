import 'package:movies_2/models/movies_model.dart';
import 'package:movies_2/repositories/movies_repository.dart';
import 'package:movies_2/service/dio_service.dart';
import 'package:movies_2/utils/apis.utils.dart';

class MoviesRepositoryImp implements MovieRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIES_LIST);
    return Movies.fromJson(result.data);
  }
}