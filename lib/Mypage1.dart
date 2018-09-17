import 'package:flutter/material.dart';
import 'package:test_ui_proj/MainPage/HomePage.dart';
import 'package:test_ui_proj/MainPage/FinePage.dart';

class Mypage1 extends StatefulWidget{

    final String title;
    Mypage1(this.title);

  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage1>{
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '发现', '我的'];
  var _pageList;

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1296db)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }

  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
    tabImages = [
      [getTabImage('images/home.png'), getTabImage('images/home_selected.png')],
      [getTabImage('images/home.png'), getTabImage('images/home_selected.png')],
      [getTabImage('images/mine.png'), getTabImage('images/mine_selected.png')]
    ];
    /*
     * 三个子界面
     */
    _pageList = [
      new HomePage(),
      new FinePage(),
    ];

  }

  @override
  Widget build(BuildContext context){
    initData();
    return new Scaffold(
    
      body: _pageList[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
       items: <BottomNavigationBarItem>[
         new BottomNavigationBarItem(
                icon: getTabIcon(0), title: getTabTitle(0)),
         new BottomNavigationBarItem(
                icon: getTabIcon(1), title: getTabTitle(1)),
       ], 
       type: BottomNavigationBarType.fixed,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },

      )
      
    );
  }
}