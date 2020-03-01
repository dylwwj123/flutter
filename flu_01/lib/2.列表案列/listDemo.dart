import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("list"),
          backgroundColor: Colors.red,
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
            ProductItem("title1","this is title1","https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3794609182,1208917417&fm=173&app=49&f=JPEG?w=640&h=340&s=E8608E1A78E65E0341DC1FE60300B022"),
            ProductItem("title2","this is title2","https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3794609182,1208917417&fm=173&app=49&f=JPEG?w=640&h=340&s=E8608E1A78E65E0341DC1FE60300B022"),
            ProductItem("title3","this is title3","https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3794609182,1208917417&fm=173&app=49&f=JPEG?w=640&h=340&s=E8608E1A78E65E0341DC1FE60300B022"),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String desc;
  final String url;

  ProductItem([this.name,this.desc,this.url]);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 3
        )
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(this.name,style: TextStyle(fontSize: 24,)),
          Text(this.desc,style: TextStyle(fontSize: 18,color: Colors.grey)),
          SizedBox(height: 10,),
          Image.network(url)
        ],
      ),
    );
  }
}