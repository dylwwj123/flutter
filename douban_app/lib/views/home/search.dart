import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {

  String title1 = "";

  SearchView(this.title1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title1),
      ),
      body: Center(
        child: Text("搜索页面"),
      ),
    );
  }
}