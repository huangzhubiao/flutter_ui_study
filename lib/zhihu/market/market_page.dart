import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  _MarketPageState createState() => _MarketPageState();
}
class _MarketPageState extends State<MarketPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
       appBar: new AppBar(
         title:new Text('市场'),
       ),
    );
  }
}