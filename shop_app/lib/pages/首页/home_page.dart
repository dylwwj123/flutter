import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shop_app/config/servcie_method.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/config/wws_btn.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  String resultStr = "正在加载中..";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    // height: ScreenUtil().setHeight(565),
    return Scaffold(
      body: FutureBuilder(
        future: getHomeBanner(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var data = json.decode(snapshot.data.toString());
            List<Map> swiper = (data["data"] as List).cast();
            return Column(
              children: <Widget>[
                SwiperDiy(swiperLists: swiper,),
              ],
            );
          }else {
            return Center(
              child: Text("loading.."),
            );
          }
        },
      )
    );
  }

}

class SwiperDiy extends StatelessWidget {

  final List swiperLists;

  SwiperDiy({this.swiperLists});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          //轮播图
          Container(
            height: 345,
            child: Swiper(
            itemCount: swiperLists.length,
            itemBuilder: (BuildContext context, int index){
              String aa = swiperLists[index]["img"];
              return Image.network(aa,fit: BoxFit.fill,);
            },
            pagination: SwiperPagination(),
            autoplay: true,
            ),
          ),
          //标题
          Positioned(
            top: 50,
            left: 20,
            child: Text("华金财商",style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
          //消息按钮
          Positioned(
            top: 51,
            right: 15,
            child: Image.asset("assets/images/消息.png",width: 25,),
          ),
          //搜索框
          Positioned(
            top: 95,
            left: 20,
            right: 15,
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(Icons.search,color: Colors.white,),
                  ),
                  Text("请输入搜索内容..",style: TextStyle(color: Colors.white,fontSize: 16),)
                ],
              ),
            ),
          ),
          //分类按钮
          CategoryBtn(),
        ],
      ),
    );
  }
}

class CategoryBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned (
            top: 150,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: IconTextButton.icon(
                      icon: Image.asset("assets/images/上新.png",width: 35,),
                      label: Text("上新"),
                      color: Colors.transparent,
                      textColor: Colors.white,
                      elevation: 0.0,
                      iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                      onPressed: (){
                        print("图下文上");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconTextButton.icon(
                      icon: Image.asset("assets/images/财商课.png",width: 30,),
                      label: Text("财商课"),
                      color: Colors.transparent,
                      textColor: Colors.white,
                      elevation: 0.0,
                      iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                      onPressed: (){
                        print("图下文上");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconTextButton.icon(
                      icon: Image.asset("assets/images/理财课.png",width: 30,),
                      label: Text("理财课"),
                      color: Colors.transparent,
                      textColor: Colors.white,
                      elevation: 0.0,
                      iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                      onPressed: (){
                        print("图下文上");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconTextButton.icon(
                      icon: Image.asset("assets/images/训练营.png",width: 30,),
                      label: Text("训练营"),
                      color: Colors.transparent,
                      textColor: Colors.white,
                      elevation: 0.0,
                      iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                      onPressed: (){
                        print("图下文上");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconTextButton.icon(
                      icon: Image.asset("assets/images/周边.png",width: 30,),
                      label: Text("周边"),
                      color: Colors.transparent,
                      textColor: Colors.white,
                      elevation: 0.0,
                      iconTextAlignment: IconTextAlignment.iconTopTextBottom,
                      onPressed: (){
                        print("图下文上");
                      },
                    ),
                  ),
                ],
              ),
            )
          );
  }
}

