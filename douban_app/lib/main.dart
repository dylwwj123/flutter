import 'package:flutter/material.dart';
import './common/tabbarItem.dart';
import './views/home/home.dart';
import './views/mine/mine.dart';
import './views/study/study.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "douban",
      theme: ThemeData(
        //主题色
        primaryColor: Colors.red,
        //去除全局点击高亮
        highlightColor: Colors.transparent,
        //去除全局点击水波纹
        splashColor: Colors.transparent
      ),
      debugShowCheckedModeBanner: false,
      home: MystackPage()
    );
  }
}

class MystackPage extends StatefulWidget {
  @override
  MystackPageState createState() => MystackPageState();
}

class MystackPageState extends State<MystackPage> {

  var _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._indexPage,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        onTap: (int index){
          setState(() {
            this._indexPage = index;
          });
        },
        items: [
          TabbarItem("tab1n", "首页"),
          TabbarItem("tab2n", "学习"),
          TabbarItem("tab3n", "我的"),
        ]
      ),
      body:IndexedStack(
        index: this._indexPage,
        children: <Widget>[
          Home(),
          Study(),
          Mine()
        ],
      )
    );
  }
}