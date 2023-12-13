import 'package:dio/dio.dart';
import 'package:movie/app/core/domain/services/http_service.dart';
import 'package:movie/config.dart';

class DioHttpServiceImp implements HttpService {
  late Dio _dio;
  DioHttpServiceImp() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'accept: application/json;charset=utf-8',
          'authorization': 'Bearer ${Config.apiToken}',
        },
      ),
    );
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
