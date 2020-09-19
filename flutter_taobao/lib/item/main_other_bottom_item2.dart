import 'package:flutter/material.dart';
import 'package:flutter_taobao/models/main_other_bottom.dart';

class MainOtherBottomItem2 extends StatefulWidget {
  final MainOtherBottom data;

  const MainOtherBottomItem2({Key key, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MainOtherBottomItem2State();
}

class MainOtherBottomItem2State extends State<MainOtherBottomItem2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(bottom: 6),
                  elevation: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      widget.data.url,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 1,
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, bottom: 2, top: 2),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      widget.data.type,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
         Container(
           margin: EdgeInsets.only(left: 10,bottom: 4,top: 4),
           child:  Text(widget.data.name,style: TextStyle(color: Colors.orange,fontSize: 12),),
         ),
         Container(
           margin: EdgeInsets.only(left: 10),
           child:  Text(widget.data.prince,style: TextStyle(color: Colors.black54,fontSize: 12),),
         ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0x2eb2801d),
            ),
            margin: EdgeInsets.only(left: 10,bottom: 10,top: 10),
            padding: EdgeInsets.only(left: 5,right: 5),
            child: Text(widget.data.form,style: TextStyle(color: Color(0xffb2801d),fontSize: 10),),
          ),
        ],
      ),
    );
  }
}
