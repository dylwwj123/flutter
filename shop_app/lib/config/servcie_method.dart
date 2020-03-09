import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import 'servcie_url.dart';

Future getHomeBanner() async {
  try {
    Response response;
    Dio dio = new Dio();
    dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded").toString();
    dio.options.responseType = ResponseType.plain;
    response = await dio.post(homeBanner);
    if (response.statusCode == 200){
      print("123");
      return response.data;
    }else {
      throw Exception("获取首页轮播图失败");
    }
  }catch(e){
    return print("error ==== $e");
  }
}