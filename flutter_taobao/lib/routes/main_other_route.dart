import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_taobao/item/main_other_bottom_item1.dart';
import 'package:flutter_taobao/item/main_other_bottom_item2.dart';
import 'package:flutter_taobao/item/main_other_middle_item.dart';
import 'package:flutter_taobao/item/other_head_carousel_item.dart';
import 'package:flutter_taobao/models/main_other_bottom.dart';
import 'package:flutter_taobao/models/main_other_head_carousel.dart';
import 'package:flutter_taobao/models/main_other_middle.dart';

class MainOtherRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainOtherRouteState();
}

class MainOtherRouteState extends State<MainOtherRoute> {
  List<MainOtherHeadCarousel> _headList = [];
  List<MainOtherMiddle> _middleList = [];
  List<MainOtherBottom> _bottomList = [];
  List<Object> lists = [];
  var _item = MainOtherMiddle(
    url:
        "https://s3-ap-northeast-1.amazonaws.com/styler-media/tw-media/uploads/2019/01/03073746/item_797532_main_15_b-e1546501731465.jpg",
    name: "阔色2020年秋新款",
    price: 130,
    type: "显瘦",
    sales: "热销3000+",
  );

  @override
  void initState() {
    for (var i = 0; i < 9; i++) {
      if (i % 2 == 0) {
        _headList.add(MainOtherHeadCarousel(
            url: "https://pic.90sjimg.com/design/01/50/42/53/591c2d199c359.png",
            name: "上衣"));
      } else {
        _headList.add(MainOtherHeadCarousel(
            url: "https://pic.90sjimg.com/design/01/39/53/98/590c4dfd6c292.png",
            name: "裤子"));
      }
    }
    _headList.add(MainOtherHeadCarousel(
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgTQtjVVQUsB_bnWOvXjm4hP-rxdbs84SJHxidI442IhM4hJ1p2UaH5RoP_KOFMPRyQiGLiH1y7Ug4euXWZjTCfTErB4ulXMreSw&usqp=CAU&ec=45702846",
        name: "查看更多"));

    for (var i = 0; i < 6; i++) {
      var singular = i % 2 == 0;
      _middleList.add(MainOtherMiddle(
        id: singular ? i : (i + 20),
        url:
            "https://s3-ap-northeast-1.amazonaws.com/styler-media/tw-media/uploads/2019/01/03073746/item_797532_main_15_b-e1546501731465.jpg",
        name: "阔色2020年秋新款",
        price: 299,
        type: "满300减30",
        sales: "已售300+件",
      ));
    }
    for (var i = 0; i < 4; i++) {
      var singular = i % 2 == 0;
      _bottomList.add(MainOtherBottom(
        id: singular ? (i + 10) : i,
        url:
            "https://img.alicdn.com/imgextra/https://img.alicdn.com/bao/uploaded/i4/1793931010/O1CN01VIO7nI1JKceItdpSD_!!1793931010.jpg_430x430q90.jpg",
        name: "时尚潮女搭配",
        prince: "最高降¥300",
        type: "折扣",
        form: "好友推荐",
      ));
    }
    lists.addAll(_middleList);
    lists.addAll(_bottomList);
    lists.sort((left, right) {
      print("left==${left.toString()} ,right ===${right.toString()}");
      if (left is MainOtherMiddle && right is MainOtherBottom) {
        return left.id.compareTo(right.id);
      }
      if (left is MainOtherMiddle && right is MainOtherMiddle  ) {
        return left.id.compareTo(right.id);
      }
      if (left is MainOtherBottom && right is MainOtherBottom) {
        return left.id.compareTo(right.id);
      }
      if (left is MainOtherBottom && right is MainOtherMiddle ) {
        return left.id.compareTo(right.id);
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("MainOtherRouteState 执行");
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 14, right: 14, bottom: 10),
            padding: EdgeInsets.only(bottom: 10, top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return OtherHeadCarouselItem(data: _headList[index]);
              },
              shrinkWrap: true,
              itemCount: _headList.length,
              scrollDirection: Axis.vertical,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 14, right: 14, bottom: 10),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "趋势新品",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xffb2801d),
                        ),
                        padding: EdgeInsets.only(left: 2, right: 2),
                        margin: EdgeInsets.only(right: 6),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "流行趋势抢先知",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "更多新品>>",
                        style: TextStyle(color: Colors.orange, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: MainOtherMiddleItem(data: _item),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: MainOtherMiddleItem(data: _item),
                          ),
                        ),
                        Expanded(
                          child: MainOtherMiddleItem(data: _item),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 14, right: 14, bottom: 14),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://img.51miz.com/Element/00/94/64/91/a892cacf_E946491_f9d36a0e.png",
                        ),
                        radius: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: Text(
                          "聚划算爆款抢购",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: _middleList.length,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (content, index) {
                      return MainOtherMiddleItem(
                        data: _middleList[index],
                      );
                    }),
              ],
            ),
          ),
          Text("—— 更多热卖 ——"),
       /*   GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: lists.length,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(14),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (content, index) {
                if (lists[index] is MainOtherBottom) {
                  return MainOtherBottomItem2(
                    data: lists[index],
                  );
                } else if (lists[index] is MainOtherMiddle) {
                  return MainOtherBottomItem1(
                    data: lists[index],
                  );
                } else {
                  return Text("数据出错。。。");
                }
              }),*/
          Text("—— 瀑布流方式 ——"),
          StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            itemCount: lists.length,
            shrinkWrap: true,
            padding: EdgeInsets.all(14),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (content, index) {
              if (lists[index] is MainOtherBottom) {
                return MainOtherBottomItem2(
                  data: lists[index],
                );
              } else if (lists[index] is MainOtherMiddle) {
                return MainOtherBottomItem1(
                  data: lists[index],
                );
              } else {
                return Text("数据出错。。。");
              }
            },
            staggeredTileBuilder: (index) {
//              return StaggeredTile.count(4, lists[index] is MainOtherMiddle ? 1.2 : 1);
            return StaggeredTile.fit(1);
            },
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ],
      ),
    );
  }
}
