import 'package:douban_app/models/MovieItem.dart';
import 'package:douban_app/network/httpRequest.dart';
import 'package:flutter/material.dart';
import 'homeCell.dart';

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

  List<MovieItem> items = [];

  @override
  void initState() {
    super.initState();
    WSHttpRequest.request("/movie/top250?start=0&count=20").
    then((res){
      final subjects = res.data['subjects'];
      List<MovieItem> movies = [];
      for (var sub in subjects) {
        movies.add(MovieItem.fromMap(sub));
      }
      setState(() {
        this.items = movies;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext contenx, int index) {
          return HomeCell(this.items[index]);
        }
      ),
    );
  }
}