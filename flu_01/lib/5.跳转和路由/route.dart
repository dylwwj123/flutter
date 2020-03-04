import 'package:flutter/material.dart';
import './routeNext.dart';
import './routeAA.dart';

class RouteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/routeNext" : (context)=>RouteNextView(),
        "/routeAA" : (context)=>RouteAA()
      },
      home: Scaffold(
        body: Center(
          child: RouteNextView(),
        ),
      ),
    );
  }
}