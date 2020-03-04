import 'package:flutter/material.dart';

class EXPDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("网格布局"),
          ),
          body: EXPViewDemo()),
    );
  }
}

class EXPViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
              child: Container(
                height: 200,
                color: Colors.blue,
            ),
          ),
          SizedBox(width:10),
          Container(
            width: 200,
            height: 200,
            child: Image.network("https://i0.hdslb.com/bfs/sycp/creative_img/202003/44114756ecf05dceb5023328177a7f8d.jpg",fit: BoxFit.cover,),
          ),
          SizedBox(width:10),
          Expanded(
            flex: 1,
            child: Container(
                height: 200,
                color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}