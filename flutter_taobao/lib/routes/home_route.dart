
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'activity_home_route.dart';
import 'main_home_route.dart';
import 'message_home_route.dart';
import 'personage_home_route.dart';
import 'shopping_cart_home_route.dart';

class HomeRoute extends StatefulWidget{
  @override
  HomeRouteState createState() =>HomeRouteState();

}

class HomeRouteState extends State<HomeRoute>{
  int _selectedIndex = 0;
  List<Widget> pages = List<Widget>();


  @override
  void initState() {
    super.initState();
    pages..add(MainHomeRoute())
      ..add(ActivityHomeRoute())
      ..add(MessageHomeRoute())
      ..add(ShoppingCartHomeRoute())
      ..add(PersonageHomeRoute());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("首页"),backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv),title: Text("活动")),
          BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息")),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text("购物车")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("我的淘宝",)),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.red,
        onTap: _onItemTapped,
        unselectedItemColor:Colors.black,
      ),
      body: pages[_selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}