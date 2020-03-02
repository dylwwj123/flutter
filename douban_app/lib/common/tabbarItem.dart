import 'package:flutter/material.dart';

class TabbarItem extends BottomNavigationBarItem {
  TabbarItem(String iconName,String title):
  super(
    icon: Image.asset("assets/images/$iconName.png", width: 22,),
    activeIcon: Image.asset("assets/images/${iconName}s.png", width: 22,),
    title: Text(title)
  );
}