import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    getHttp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("首页1234"),
      ),
    );
  }
}

void getHttp() async {
  try {
    Response response;
    response = await Dio().get("http://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=1");
    return print(response);
  } catch (e) {
    print(e);
  }
}