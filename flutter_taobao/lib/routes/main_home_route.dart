import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taobao/widgets/main_bar.dart';

import 'main_main_route.dart';
import 'main_other_route.dart';

class MainHomeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainHomeRouteState();
}

class MainHomeRouteState extends State<MainHomeRoute>
    with SingleTickerProviderStateMixin {
  List _myHomeTab = [
    "首页",
    "女装",
    "奢品",
    "百货",
    "饰品",
    "内衣",
    "男装",
    "鞋靴",
    "箱包",
    "运动",
    "母婴",
    "进口",
    "美妆",
    "食品",
    "家装"
  ];
  TabController _tabController;
  var index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _myHomeTab.length, vsync: this);
    _tabController.addListener(() {
      index = _tabController.index;
      print("MainHomeRouteState tab 切换了$index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: MainBarWidget(
        contentHeight: 44,
        navigationBarBackgroundColor: Color(0xfff2f2f2),
      ),
      body: DefaultTabController(
        length: _myHomeTab.length,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.white10,
          appBar: TabBar(
            controller: _tabController,
            tabs: _myHomeTab
                .map((e) => Tab(
                      text: e,
                    ))
                .toList(),
            labelColor: Colors.deepOrangeAccent,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(),
            isScrollable: true,
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(
                child: MainMainRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
              Container(
                child: MainOtherRoute(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
