import 'package:douban_app/common/dashline.dart';
import 'package:flutter/material.dart';

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: HYDashedLine(axis: Axis.vertical,count: 20,),
      ),
    );
  }
}