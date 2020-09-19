import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taobao/models/main_main_title2.dart';

class MainHomeMainRoute extends StatefulWidget {
  final List<MainMainTitle2> data;

  MainHomeMainRoute({Key key, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MainHomeMainRouteState();
}

class MainHomeMainRouteState extends State<MainHomeMainRoute>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var index = 0;
  List<MainMainTitle2> list = [
    MainMainTitle2(title: "全部", subhead: "猜你喜欢"),
    MainMainTitle2(title: "直播", subhead: "新品搭配购"),
    MainMainTitle2(title: "便宜好货", subhead: "低价抢购"),
    MainMainTitle2(title: "买家秀", subhead: "真实晒单"),
  ];

  @override
  void initState() {
    super.initState();
//    _tabController = TabController(length: widget.data.length, vsync: this);
    _tabController = TabController(length: list.length, vsync: this);
    _tabController.addListener(() {
      index = _tabController.index;
      print("MainHomeMainRouteState tab 切换了$index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: list.length,
        initialIndex: 1,
        child: Column(
          children: <Widget>[
            TabBar(
              controller: _tabController,
              tabs: list
                  .map((e) => Tab(
                        text: e.title,
                      ))
                  .toList(),
              labelColor: Colors.deepOrangeAccent,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(),
            ),
//            TabBarView(
//              controller: _tabController,
//              children: list.map((e) {
//                return
                  Center(
                  child: Text("你怎么还不出来"),
//                );
//              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
