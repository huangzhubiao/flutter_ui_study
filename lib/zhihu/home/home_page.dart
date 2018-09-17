import 'package:flutter/material.dart';
import 'follow.dart';
import 'recommend.dart';
import 'package:test_ui_proj/zhihu/global_config.dart';

class ZHomePage extends StatefulWidget {
  _ZHomePageState createState() => _ZHomePageState();
}
class _ZHomePageState extends State<ZHomePage>{
  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            // title: barSearch(),
            title: new Text('首页1'),
            bottom: new TabBar(
              labelColor: GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
              unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
              
              tabs: [
                new Tab(text: "关注"),
                new Tab(text: "推荐"),
                // new Tab(text: "热榜"),
              ],
            ),
          ),
          body: new TabBarView(
              children: [
                new Follow(),
                new Recommend(),
                // new Hot()
              ]
          ),
        ),
    );
  }
}