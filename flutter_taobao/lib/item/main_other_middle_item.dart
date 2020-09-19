
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taobao/models/main_other_middle.dart';

class MainOtherMiddleItem extends StatefulWidget{
  final MainOtherMiddle data;

  const MainOtherMiddleItem({Key key, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>MainOtherMiddleItemState();

}

class MainOtherMiddleItemState extends State<MainOtherMiddleItem>{
  @override
  Widget build(BuildContext context) {
   return Container(
     child:Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Expanded(
           flex: 1,
          child: Container(
             margin: EdgeInsets.only(bottom: 4),
             child: ClipRRect(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
               child: Image.network(widget.data.url, fit: BoxFit.fill,),
             ),
           ),
         ),
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Text(widget.data.name,style: TextStyle(color: Colors.black54,fontSize: 10),),
        ),
         Container(
           margin: EdgeInsets.only(top: 4,bottom: 4),
           padding: EdgeInsets.only(left: 4,right: 4),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(2),
             border: Border.all(color: Colors.deepOrangeAccent,width: 1),
             color: Colors.white,
           ),
           child: Text("${widget.data.type}",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 8),),
         ),
         Container(
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