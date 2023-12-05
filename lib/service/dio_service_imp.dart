import 'package:dio/dio.dart';
import 'package:movies_2/config.dart';
import 'package:movies_2/service/dio_service.dart';

class DioServiceImp extends DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/4/',
      headers: {
        'content-type': 'accept: application/json;charset=utf-8',
        'authorization': 'Bearer ${Config.apiToken}',
      },
    ));
  }
}
