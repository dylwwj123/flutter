import 'package:flutter/material.dart';
import './首页/home_page.dart';
import './分类/category_page.dart';
import './购物车/shopCar_page.dart';
import './我的/mine_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  final List<BottomNavigationBarItem> itmes = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("首页")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text("分类")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text("购物车")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text("会员中心")
    ),
  ];
  
  final List tabBodies = [
    HomePage(),
    CategpryPage(),
    ShopCarPage(),
    MinePage(),
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    super.initState();
    currentPage = tabBodies[currentIndex];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: itmes,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}