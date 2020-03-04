import 'package:flutter/material.dart';

class StackViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("stack"),
          ),
          body: StackViewVVV()),
    );
  }
}

class StackViewVVV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 400,
      color: Colors.yellow,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(1,1),
            child: Text("123123"),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Text("sfasf"),
          ),
          Align(
            alignment: Alignment(-1,-1),
            child: Text("asdasdasd"),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Text("wwwwwwwwwwww"),
          )
        ],
      ),
    );
  }
}