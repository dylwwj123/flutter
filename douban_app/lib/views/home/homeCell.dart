import 'package:douban_app/common/dashline.dart';
import 'package:douban_app/common/star.dart';
import 'package:douban_app/models/MovieItem.dart';
import 'package:flutter/material.dart';

class HomeCell extends StatelessWidget {

  final MovieItem item;

  HomeCell(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom:BorderSide(width: 10,color: Color(0xffe2e2e2))
        )
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getRank(),
          SizedBox(height: 10,),
          getRowItem(),
          SizedBox(height: 10,),
          getContent()
        ],
      ),
    );
  }

  Widget getRank(){
    return Container(
      // padding: EdgeInsets.all(5),
      // color: Colors.red, //color和decoration不能同时存在
      padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Text(
        "No.${item.rank}",
        style: TextStyle(color: Colors.white,fontSize: 18),
      ),
    );
  }

  Widget getContent(){
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffc3c3c3),
        borderRadius: BorderRadius.circular(4)
      ),
      width: double.infinity,
      child: Text(
        item.originalTitle,
        style: TextStyle(color: Colors.black54,fontSize: 18),
      ),
    );
  }

  Widget getRowItem(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            item.imageURL,
            height: 150,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Icon(Icons.play_arrow,color: Colors.red,size: 23,),
                    // Text(item.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                    // Text(" (${item.playDate})",style: TextStyle(color: Colors.blueGrey,fontSize: 13),maxLines: 1,),
                    Text.rich(TextSpan(
                        children: [
                          TextSpan(text: "      " + item.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                          TextSpan(text: " (${item.playDate})",style: TextStyle(color: Colors.blueGrey,fontSize: 13)),
                        ]
                    )),
                  ],
                ),
                //评分
                SizedBox(height:10),
                Row(
                  children: <Widget>[
                    HYStarRating(rating: item.rating - 1.5,selectedColor: Colors.red,size: 20,),
                    SizedBox(width:10),
                    Text("${item.rating}分",style: TextStyle(color: Colors.pink,fontSize: 14),)
                  ],
                ),
                SizedBox(height:10),
                //演员表
                getInfoWidget(),
              ],
            ),
          ),
        ),
        Container(
          width: 1,
          height: 148,
          child: HYDashedLine(axis: Axis.vertical,count: 12,color: Colors.blueGrey,),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 41,horizontal: 10),
          child: Column(
            children: <Widget>[
              Icon(Icons.add_box,size: 40,color: Colors.red,),
              SizedBox(height:5),
              Text("想 看",style: TextStyle(color: Colors.red,fontSize: 14),)
            ],
          ),
        )
      ],
    );
  }
  
  Widget getInfoWidget() {
    // 1.获取种类字符串
    final genres = item.genres.join(" ");
    final director = item.director.name;
    var castString = "";
    for (final cast in item.casts) {
      castString += cast.name + " ";
    }
    
    return Text(
      "$genres / $director / $castString"+"123123jkahdkjhkhekqjwheqwheiuqwheiuqwyeiuqwywieyqwieyqwoasdasdasdasdassaddasdasdasdasdasdasdasdasdasda",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 14),
    );
  }
}