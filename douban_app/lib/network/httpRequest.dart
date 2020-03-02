import 'package:dio/dio.dart';
import 'httpConfig.dart';

class WSHttpRequest {
  static Future request(String url,{String method = 'get',Map<String,dynamic>params}) async {
    BaseOptions base = BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: TIMEOUT
    );
    final dio = Dio(base);
    Options option = Options(method: method);
    try {
      final result = await dio.request(url,queryParameters: params,options: option);
      return result;
    } on DioError catch(e){
      throw e;
    }
  }
}