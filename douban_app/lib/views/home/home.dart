import 'package:douban_app/network/httpRequest.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  void initState() {
    super.initState();
    WSHttpRequest.request("https://douban.uieee.com/v2/movie/top250?start=0&count=20").
    then((res){
      print(res);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}