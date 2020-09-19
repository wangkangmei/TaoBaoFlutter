
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taobao/models/main_other_middle.dart';

class MainOtherBottomItem1 extends StatefulWidget{
  final MainOtherMiddle data;

  const MainOtherBottomItem1({Key key, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>MainOtherBottomItem1State();
}

class MainOtherBottomItem1State extends State<MainOtherBottomItem1>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                child: Image.network(widget.data.url, fit: BoxFit.fitHeight,),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5,left: 10),
            child: Text(widget.data.name,style: TextStyle(color: Colors.black54,fontSize: 14),),
          ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 4,bottom: 4,left: 10),
              padding: EdgeInsets.only(left: 4,right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.blue,width: 0.5),
                color: Colors.white,
              ),
              child: Text("显瘦",style: TextStyle(color: Colors.blue,fontSize: 8),),
            ),
            Container(
              margin: EdgeInsets.only(top: 4,bottom: 4,left: 5),
              padding: EdgeInsets.only(left: 4,right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.blue,width: 0.5),
                color: Colors.white,
              ),
              child: Text("${widget.data.type}",style: TextStyle(color: Colors.blue,fontSize: 8),),
            ),
            Container(
              margin: EdgeInsets.only(top: 4,bottom: 4,left: 5),
              padding: EdgeInsets.only(left: 4,right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.blue,width: 0.5),
                color: Colors.white,
              ),
              child: Text("慵懒",style: TextStyle(color: Colors.blue,fontSize: 8),),
            )
          ],
        ),
          Container(
            margin: EdgeInsets.only(left: 10,bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("¥${widget.data.price}",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 17),),
                Container(
                  margin: EdgeInsets.only(left: 4),
                  alignment: Alignment.centerLeft,
                  child:  Text(widget.data.sales,style: TextStyle(fontSize: 8,color: Colors.black26),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}