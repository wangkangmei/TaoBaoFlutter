
import 'package:flutter/material.dart';
import 'package:flutter_taobao/models/main_icon.dart';

class ServiceItem extends StatelessWidget{
  final MainIcon data;

  ServiceItem({Key key,this.data}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(this.data.icons,color: this.data.color,),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(this.data.name,style: TextStyle(color: Colors.black54,fontSize: 12),),
          ),
        ],
      ),
    );
  }

}