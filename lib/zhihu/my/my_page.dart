import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  _MyPageState createState() => _MyPageState();
}
class _MyPageState extends State<MyPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
       appBar: new AppBar(
         title:new Text('我的'),
       ),
    );
  }
}