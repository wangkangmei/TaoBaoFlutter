
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:toast/toast.dart';

class MainPageView extends StatefulWidget {
  List<String> images = ["imges/img_beautiful.png", "imges/img_fitness.jpg"];
  int currentIndex = 0;

  MainPageView({this.images  , this.currentIndex = 0}) : super();

  @override
  State<StatefulWidget> createState() => MainPageViewState();
}

class MainPageViewState extends State<MainPageView> {

  @override
  void initState() {
    super.initState();
    print("MainPageView ${widget.images}");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Swiper(
        itemBuilder: (context,index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: new Image.network(widget.images[index],fit: BoxFit.fill,),
          );
        },
        itemCount: widget.images.length,
        itemWidth: 300,
        loop: true,
        index: 0,
        duration: 300,
        autoplay: true,
        pagination: new SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.white70,
            activeColor: Colors.deepOrangeAccent
          ),
        ),
        onTap: (index){
          Toast.show("轮播图点击$index ", context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);
        },
      ),
    );
  }
}
