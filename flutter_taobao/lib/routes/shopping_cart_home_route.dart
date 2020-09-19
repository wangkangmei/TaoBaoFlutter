
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartHomeRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>ShoppingCartHomeRouteState();

}

class ShoppingCartHomeRouteState extends State<ShoppingCartHomeRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("购物车页。。"),
        ],
      ),
    );
  }

}