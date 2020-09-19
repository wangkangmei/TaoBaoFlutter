
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonageHomeRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PersonageHomeRouteState();

}
class PersonageHomeRouteState extends State<PersonageHomeRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("个人主页。。"),
        ],
      ),
    );
  }

}