
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityHomeRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ActivityHomeRouteState();

}

class ActivityHomeRouteState extends State<ActivityHomeRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("活动页。。"),
        ],
      ),
    );
  }

}