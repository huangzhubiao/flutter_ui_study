import 'package:flutter/material.dart';
import 'package:test_ui_proj/DemoItem.dart';

class DemoPage extends StatefulWidget{
    @override
    _DemoPageState createState() => _DemoPageState();
    }
    
class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      ///背景样式
      backgroundColor: Colors.blue,
      ///标题栏，当然不仅仅是标题栏
      appBar: new AppBar(
        ///这个title是一个Widget
        title: new Text("Title"),
      ),
      ///正式的页面开始
      ///一个ListView，20个Item
      body: new ListView.builder(
        itemBuilder: (context, index) {
          return new DemoItem();
        },
        itemCount: 20,
      ),
    );
  }
}
