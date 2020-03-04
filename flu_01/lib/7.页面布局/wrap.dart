import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("stack"),
          ),
          body: WrapDemoView()),
    );
  }
}

class WrapDemoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 5,
        children: <Widget>[
          WSBtn("上衣"),
          WSBtn("阿萨德"),
          WSBtn("水电费可视角度"),
          WSBtn("胜多负少"),
          WSBtn("虚"),
          WSBtn("第三方付"),
          WSBtn("编程序"),
          WSBtn("发过的"),
          WSBtn("欧迪芬囧的"),
          WSBtn("欧迪芬囧的"),
          WSBtn("欧迪芬囧的"),
          WSBtn("欧迪芬囧的"),
        ],
      ),
    );
  }
}

class WSBtn extends StatelessWidget {

  final String name;

  WSBtn(this.name);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(name,style: TextStyle(color: Colors.white,fontSize: 16),),
      color: Colors.blue,
      onPressed: (){
        print("1");
      },
    );
  }
}