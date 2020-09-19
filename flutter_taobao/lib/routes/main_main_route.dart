import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taobao/item/clothes_top_item.dart';
import 'package:flutter_taobao/item/service_item.dart';
import 'package:flutter_taobao/models/clothes.dart';
import 'package:flutter_taobao/models/main_icon.dart';
import 'package:flutter_taobao/models/main_main_title2.dart';
import 'package:flutter_taobao/widgets/main_pageview.dart';

import 'main_home_main_route.dart';

class MainMainRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMainRouteState();
}

class MainMainRouteState extends State<MainMainRoute> {
  List<String> _images = [
    "https://thumb210.jfcdns.com/n131e2ap12w19/16f5c34734aa51ac.jpeg",
    "https://imgcache.dealmoon.com/thumbimg.dealmoon.com/dealmoon/b6d/70c/e3e/f2353124467f155ae235c17.jpg_0_400_13_0ccd.jpg",
    "https://www.tbangzhu.cn/uploads/allimg/200101/1-2001011ZFC59.jpg",
    "https://static.jisujie.com/wp-content/uploads/1535084530059.jpg",
    "https://images.uiiiuiii.com/wp-content/uploads/2017/12/i-bn20171228-2-07.jpg",
    "https://cf.dtcj.com/richeditor/efbd8e84-78ab-4398-95fc-fc3df9225c60.png",
  ];

  List<MainIcon> _programmes = [
    MainIcon(name: "天猫新品", icons: Icons.pages, color: Colors.red),
    MainIcon(name: "充值中心", icons: Icons.pages, color: Colors.deepOrangeAccent),
    MainIcon(name: "今日爆款", icons: Icons.pages, color: Colors.red),
    MainIcon(name: "奢品折扣", icons: Icons.pages, color: Colors.orange),
    MainIcon(name: "芭芭农场", icons: Icons.pages, color: Colors.green),
    MainIcon(name: "领淘金币", icons: Icons.pages, color: Colors.orangeAccent),
    MainIcon(name: "饿了么", icons: Icons.pages, color: Colors.blue),
    MainIcon(name: "阿里拍卖", icons: Icons.pages, color: Colors.pink),
    MainIcon(name: "天猫超市", icons: Icons.pages, color: Colors.teal),
    MainIcon(name: "淘鲜达", icons: Icons.pages, color: Colors.greenAccent),
    MainIcon(name: "飞猪旅行", icons: Icons.pages, color: Colors.orange),
    MainIcon(name: "天猫国际", icons: Icons.pages, color: Colors.deepPurple),
    MainIcon(name: "淘宝吃货", icons: Icons.pages, color: Colors.red),
    MainIcon(name: "分类", icons: Icons.pages, color: Colors.deepOrangeAccent),
    MainIcon(name: "咸鱼", icons: Icons.pages, color: Colors.yellow),
    MainIcon(name: "天猫美食", icons: Icons.pages, color: Colors.pinkAccent),
  ];

  List<MainMainTitle2> title2List = [
    MainMainTitle2(title: "全部",subhead: "猜你喜欢"),
    MainMainTitle2(title: "直播",subhead: "新品搭配购"),
    MainMainTitle2(title: "便宜好货",subhead: "低价抢购"),
    MainMainTitle2(title: "买家秀",subhead: "真实晒单"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: MainPageView(
              images: _images,
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 18),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (context, index) {
                return ServiceItem(data: _programmes[index]);
              },
              shrinkWrap: true,
              itemCount: _programmes.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, right: 5),
            padding: EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.deepOrangeAccent, width: 0.1),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.red,
                Colors.redAccent,
                Colors.pink
              ]),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    "聚划算99划算节",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 3),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(right: 5),
                        child: ClothesTopItem(
                          data: Clothes(
                              url:
                                  "https://img.alicdn.com/imgextra/i2/380101244/O1CN01PN6hSE1L3nJavRAn3_!!380101244.jpg",
                              name: "品质女装"),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      margin: EdgeInsets.only(top: 3),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          "https://img.alicdn.com/bao/uploaded/i3/274912906/O1CN01I9SqFw1XKza6ggvLE_!!274912906.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      margin: EdgeInsets.only(top: 3),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          "https://img.alicdn.com/imgextra/i3/728217508/O1CN01CovT7v25KiGQc3eNc_!!728217508.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                      color: Colors.deepOrangeAccent,
                                      width: 0.1),
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(colors: [
                                    Colors.orangeAccent,
                                    Color(0xFFAB47BC)
                                  ]),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          "最后一天狂欢",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 15,
                                      height: 15,
                                      margin: EdgeInsets.only(right: 5),
                                      child: Image.network(
                                          "https://gw.alicdn.com/tfs/TB1XcxWg.Y1gK0jSZFCXXcwqXXa-16-16.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 8),
                        child: ClothesTopItem(
                          data: Clothes(
                              url:
                                  "https://img.alicdn.com/imgextra/i2/380101244/O1CN01PN6hSE1L3nJavRAn3_!!380101244.jpg",
                              name: "天天领红包"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: 300,
            ),
            child:Container(
              child:  MainHomeMainRoute(data: title2List,),
            ),
//          child: Text("我是另一个滑动。。",style: TextStyle(color: Colors.redAccent),),
          ),
          Text(
            "首页展示。。。",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ],
      ),
    );
  }
}
