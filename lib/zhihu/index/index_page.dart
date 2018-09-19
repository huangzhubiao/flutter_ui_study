import 'package:flutter/material.dart';
import 'package:test_ui_proj/zhihu/home/home_page.dart';
import 'package:test_ui_proj/zhihu/idea/idea_page.dart';
import 'package:test_ui_proj/zhihu/market/market_page.dart';
import 'package:test_ui_proj/zhihu/my/my_page.dart';
import 'package:test_ui_proj/zhihu/notice/notice_page.dart';
import 'package:test_ui_proj/zhihu/index/navigation_icon_view.dart';
import 'package:test_ui_proj/zhihu/global_config.dart';
import 'package:test_ui_proj/zhihu/index/icon_tab.dart';
import 'package:flutter/foundation.dart';

class Index extends StatefulWidget {

  @override
  State<Index> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin{

  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text("首页"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.all_inclusive),
        title: new Text("想法"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_shopping_cart),
        title: new Text("市场"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: new Text("通知"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("我的"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new ZHomePage(),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState((){});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }
final ThemeData kIOSTheme = new ThemeData(
);

final ThemeData kDefaultTheme = new ThemeData(
  // primarySwatch: Colors.black12,
  // accentColor: Colors.orangeAccent[100],
);
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) => navigationIconView.item)
            .toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState((){
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      }
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: _currentPage
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      // theme: kIOSTheme
      
    );
  }

}

//===============boss====================class
const double _kTabTextSize = 11.0;
const int INDEX_HOME = 0;
const int INDEX_IDEA = 1;
const int INDEX_MARKET = 2;
const int INDEX_NOTICE = 3;
const int INDEX_MY = 4;
Color _kPrimaryColor = new Color.fromARGB(255, 0, 215, 198);

class BossApp extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();
    _controller =
    new TabController(initialIndex: _currentIndex, length: 5, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          new ZHomePage(),
          new IdeaPage(),
          new MarketPage(),
          new NoticePage(),
          new MyPage()],
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: _controller,
          // indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 0.1,
          labelStyle: new TextStyle(fontSize: _kTabTextSize),
          tabs: <IconTab>[
            new IconTab(
              icon: _currentIndex == INDEX_HOME
                ? "images/ic_main_tab_company_pre.png"
                : "images/ic_main_tab_company_nor.png",
              text: "首页",
              color: _currentIndex == INDEX_HOME ? _kPrimaryColor : Colors.grey[900]
            ),
            new IconTab(
              icon: _currentIndex == INDEX_IDEA
                ? "images/ic_main_tab_contacts_pre.png"
                : "images/ic_main_tab_contacts_nor.png",
              text: "消息",
              color: _currentIndex == INDEX_IDEA ? _kPrimaryColor : Colors.grey[900]
            ),
            new IconTab(
              icon: _currentIndex == INDEX_MARKET
                ? "images/ic_main_tab_find_pre.png"
                : "images/ic_main_tab_find_nor.png",
              text: "市场",
              color: _currentIndex == INDEX_MARKET ? _kPrimaryColor : Colors.grey[900]
            ),
            new IconTab(
              icon: _currentIndex == INDEX_NOTICE
                ? "images/ic_main_tab_my_pre.png"
                : "images/ic_main_tab_my_nor.png",
              text: " 通知",
              color: (_currentIndex == INDEX_NOTICE) ? _kPrimaryColor : Colors.grey[900]
            ),
            new IconTab(
              icon: _currentIndex == INDEX_MY
                ? "images/ic_main_tab_my_pre.png"
                : "images/ic_main_tab_my_nor.png",
              text: "我的",
              color: (_currentIndex == INDEX_MY) ? _kPrimaryColor : Colors.grey[900]
            ),
          ],
        ),
      ),
    );
  }
}