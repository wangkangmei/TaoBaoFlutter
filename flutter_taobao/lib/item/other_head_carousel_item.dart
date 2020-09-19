
import 'package:flutter/material.dart';
import 'package:flutter_taobao/models/main_other_head_carousel.dart';

class OtherHeadCarouselItem extends StatefulWidget{
 final MainOtherHeadCarousel data;

  const OtherHeadCarouselItem({Key key, this.data}) : super(key: key);


  @override
  State<StatefulWidget> createState()=>OtherHeadCarouselItemState();

}

class OtherHeadCarouselItemState extends State<OtherHeadCarouselItem>{
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(
       children: <Widget>[
        Expanded(
          flex: 1,
          child:  Container(
            height: 50,
            child: Image.network(widget.data.url,fit: BoxFit.fill,),
          ),
        ),
         Text(widget.data.name,style: TextStyle(color: Colors.black54,fontSize: 12),),
       ],
     ),
   );
  }

}