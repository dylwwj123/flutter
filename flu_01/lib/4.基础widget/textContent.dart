import 'dart:ui';

import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("基础控件"),
        ),
        body: FromDemo(),
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

// 按钮
class SystemBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          FloatingActionButton(
            child: Text("123"),
            onPressed: () {
              print("FloatingActionButton Click");
            },
          ),
          RaisedButton(
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.people,color: Colors.white,),
                SizedBox(width:10),
                Text("RaisedButton",style: TextStyle(color: Colors.white,fontSize: 18),)
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: () {
              print("RaisedButton Click");
            },
          ),
          FlatButton(
            child: Text("FlatButton"),
            onPressed: () {
              print("FlatButton Click");
            },
          ),
          OutlineButton(
            child: Text("OutlineButton"),
            onPressed: () {
              print("OutlineButton Click");
            },
          )
        ],
      ),
    );
  }
}

// 图片
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Container(
    //     width:300,
    //     height:300,
    //     color: Colors.red,
    //     child: Image.network(
    //       "https://i0.hdslb.com/bfs/sycp/creative_img/202002/49e8a2b72b2747eb15aa1c0e114e23b5.jpg",
    //       // fit: BoxFit.none
    //       repeat: ImageRepeat.repeatY,
    //     ),
    //     // child: Image.asset("assets/images/a1.png"),
    //   ),
    // );
    // 圆角头像
    // return ClipOval(
    //   child: Image.network("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",width: 100,height: 100,),
    // );
    // 圆角边框
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",width: 100,height: 100,),
    );
  }
}

// 输入框
class RegisterDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<RegisterDemo> {

  final textEnd = TextEditingController();

  @override
  void initState() {
    super.initState();

    textEnd.text = "啊啊啊";
    textEnd.addListener((){
      print("jt: ${textEnd.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "用户名",
              hintText: "请输入用户名",
              border: OutlineInputBorder(
                borderSide: BorderSide(width:1),
              ),
              filled: true,
              fillColor: Colors.red
            ),
            onChanged: (value){
              print(value);
            },
            onSubmitted: (value){
              print(value);
            },
            controller: textEnd,
          ),
        ],
      ),
    );
  }
}

// from表单
class FromDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FromState1();
  }
}

class FromState1 extends State<FromDemo> {

  String name;
  String pwd;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              autovalidate: true,
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "用户名"
              ),
              onSaved: (value){
                this.name = value;
              },
              validator: (value){
                if (value == null || value.length == 0) {
                  return "账号不能为空";
                }
                return null;
              },
            ),
            TextFormField(
              autovalidate: true,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "密码"
              ),
              onSaved: (value){
                this.pwd = value;
              },
              validator: (value){
                if (value == null || value.length == 0) {
                  return "密码不能为空";
                }
                return null;
              },
            ),
            SizedBox(height:20),
            Container(
              width: double.infinity,
              height: 44,
              child: RaisedButton(
                child: Text("注册",style: TextStyle(fontSize: 20,color: Colors.white),),
                color: Colors.blue,
                onPressed: (){
                  formKey.currentState.save();
                  // formKey.currentState.validate();
                  if (formKey.currentState.validate() == true) {
                    print("${this.name} -- ${this.pwd}");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}