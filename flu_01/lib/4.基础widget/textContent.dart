import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("text使用"),
        ),
        body: Fuwenben(),
      ),
    );
  }
}

// 文本Text
class ContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        "我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题我是标题",
        style: TextStyle(
          fontSize: 20,
          color: Colors.red
        ),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// 富文本
class Fuwenben extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:"啊啊啊啊啊啊啊啊啊啊",
            style: TextStyle(fontSize: 20,color: Colors.red)
          ),
          TextSpan(
            text:"嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻",
            style: TextStyle(fontSize: 20,color: Colors.red)
          ),
            TextSpan(
              text:"啦啦啦啦啦啦啦啦啦",
              style: TextStyle(fontSize: 20,color: Colors.red)
            ),
        ]
      )
    );
  }
}