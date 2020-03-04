import 'package:flutter/material.dart';

class RouteAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("路由跳转页"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Pop"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}