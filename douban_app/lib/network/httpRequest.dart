import 'package:dio/dio.dart';
import 'httpConfig.dart';

class WSHttpRequest {

  static BaseOptions base = BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: TIMEOUT
  );

  static final dio = Dio(base);

  static Future request(String url,{String method = 'get',Map<String,dynamic>params}) async {
    Options option = Options(method: method);
    try {
      final result = await dio.request(url,queryParameters: params,options: option);
      return result;
    } on DioError catch(e){
      throw e;
    }
  }
  
}