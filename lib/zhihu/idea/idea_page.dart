import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  _IdeaPageState createState() => _IdeaPageState();
}
class _IdeaPageState extends State<IdeaPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
       appBar: new AppBar(
         title:new Text('想法'),
       ),
    );
  }
}