import 'package:flutter/material.dart';
import '../page/find.dart';
import '../page/home.dart';
import '../page/mine.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _noSelColor = Colors.grey;
  final _selColor = Colors.red;
  int _currentIndex = 0;
  final PageController _controller = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Home(), Find(), Mine()
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _noSelColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: _selColor,
              ),
              title: Text(
                "首页",
                style: TextStyle(
                    color: _currentIndex != 0 ? _noSelColor : _selColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _noSelColor,
              ),
              activeIcon: Icon(
                Icons.search,
                color: _selColor,
              ),
              title: Text(
                "发现",
                style: TextStyle(
                    color: _currentIndex != 1 ? _noSelColor : _selColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: _noSelColor,
              ),
              activeIcon: Icon(
                Icons.people,
                color: _selColor,
              ),
              title: Text(
                "我的",
                style: TextStyle(
                    color: _currentIndex != 2 ? _noSelColor : _selColor),
              ))
        ],
      ),
    );
  }
}
