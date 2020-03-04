import 'package:flutter/material.dart';

class DTListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("动态列表"),
        ),
        body: DTListDemo()
      ),
    );
  }
}

class DTListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(listData[index]["title"]),
          subtitle: Text(listData[index]["autor"]),
          leading: Image.network(listData[index]["imageUrl"]),
        );
      },  
    );
  }
}

List listData=[
  {
    "title" : "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor" : "wws",
    "imageUrl" : "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title" : "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor" : "wws",
    "imageUrl" : "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title" : "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor" : "wws",
    "imageUrl" : "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title" : "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor" : "wws",
    "imageUrl" : "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title" : "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor" : "wws",
    "imageUrl" : "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
  {
    "title" : "阿萨德爱神的箭氨基酸抵抗力加进来全文机器为UI噢全文缷奥斯丁哈就开始花嫁卡啥都会",
    "autor" : "wws",
    "imageUrl" : "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3173584241,3533290860&fm=26&gp=0.jpg"
  },
];