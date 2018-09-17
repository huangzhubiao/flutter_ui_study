import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget {
  _NoticePageState createState() => _NoticePageState();
}
class _NoticePageState extends State<NoticePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
       appBar: new AppBar(
         title:new Text('通知'),
       ),
    );
  }
}