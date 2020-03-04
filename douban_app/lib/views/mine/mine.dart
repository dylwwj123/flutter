import 'package:douban_app/common/dashline.dart';
import 'package:douban_app/views/home/search.dart';
import 'package:flutter/material.dart';

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClickBtn()
    );
  }
}

class ClickBtn extends StatefulWidget {
  @override
  _ClickBtnState createState() => _ClickBtnState();
}

class _ClickBtnState extends State<ClickBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text("点我~"),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchView(title1: "search",))
            );
          }
        )
      ),
    );
  }
}