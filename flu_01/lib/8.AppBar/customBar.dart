import 'package:flutter/material.dart';
import 'package:flu_01/7.页面布局/wrap.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text("My AppBar"),
              backgroundColor: Colors.green,
              centerTitle: true,
              leading: Icon(Icons.menu),
              actions: <Widget>[
                Icon(Icons.message),
                SizedBox(width:15)
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(text: "热门",),
                  Tab(text: "最新",),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListTile(
                  title: Text("123"),
                ),
                ListTile(
                  title: Text("456"),
                )
              ],
            ),
          ),
      ),
    );
  }
}