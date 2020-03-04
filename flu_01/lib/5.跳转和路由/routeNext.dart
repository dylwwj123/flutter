import 'package:flutter/material.dart';
import './routeAA.dart';

class RouteNextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("路由跳转页"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Push"),
            onPressed: (){
              Navigator.pushNamed(context, "/routeAA");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => RouteAA())
              // );
            },
          ),
        ),
      ),
    );
  }
}