import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("网格布局"),
          ),
          body: GridListDemo()),
    );
  }
}

class GridListDemo extends StatelessWidget {
  // List<Widget> getData(){
  //   final List<Widget> list = new List();
  //   for (var i = 0; i < 20; i++) {
  //     list.add(Container(
  //       color: Colors.red,
  //       alignment: Alignment.center,
  //       child: Text("my is $i"),
  //     ));
  //   }
  //   return list;
  // }

  List<Widget> getData() {
    var tempList = listData.map((value) {
      return SingleChildScrollView(
        child: Container(
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            Text(value["title"]),
            Text(value["autor"])
          ],
        ),
      )
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      //宽度和高度的比例 可以改高度
      // childAspectRatio: 0.5,
      children: getData(),
    );
  }
}

List listData = [
  {
    "title": "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor": "wws",
    "imageUrl":
        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title": "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor": "wws",
    "imageUrl":
        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title": "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor": "wws",
    "imageUrl":
        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title": "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor": "wws",
    "imageUrl":
        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title": "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor": "wws",
    "imageUrl":
        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title": "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor": "wws",
    "imageUrl":
        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
];
