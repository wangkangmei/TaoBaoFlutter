
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageHomeRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MessageHomeRouteState();

}
class MessageHomeRouteState extends State<MessageHomeRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("消息页。。"),
        ],
      ),
    );
  }

}