import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final double contentHeight; //从外部指定高度
  Color navigationBarBackgroundColor; // 导航栏背景颜色
  Widget leadingWidget;
  Widget trailingWidget;
  String hintTitle;

  MainBarWidget(
      {@required this.leadingWidget,
      @required this.hintTitle,
      this.contentHeight = 44,
      this.navigationBarBackgroundColor = Colors.white,
      this.trailingWidget})
      : super();

  @override
  Size get preferredSize => new Size.fromHeight(contentHeight);

  @override
  State<StatefulWidget> createState() => MainBarWidgetState();
}

class MainBarWidgetState extends State<MainBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.navigationBarBackgroundColor,
      child: SafeArea(
        top: true,
        child: Container(
          height: widget.contentHeight,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 12,right: 5),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.deepOrangeAccent),
                ),
                child: Text(
                  "签到",
                  style: TextStyle(color: Colors.white,fontSize: 14),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.deepOrangeAccent, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        child: Icon(
                          Icons.crop_free,
                          color: Colors.deepOrangeAccent,
                        ),
                        padding: EdgeInsets.only(left: 8, right: 8),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "半身裙",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      Padding(
                        child: Icon(Icons.center_focus_weak),
                        padding: EdgeInsets.only(left: 8),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.deepOrangeAccent),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "搜索",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 12),
                child: Icon(
                  Icons.border_clear,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
