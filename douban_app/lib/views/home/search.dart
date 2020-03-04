import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {

  String title1;

  SearchView({this.title1 = "null"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        }
      ),
      appBar: AppBar(
        title: Text(this.title1),
      ),
      body: Center(
        child: Text("搜索页面"),
      ),
    );
  }
}