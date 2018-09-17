import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{

    List widgets = [];
    void initState() {
      super.initState();
      for(int i = 0; i < 100; i++){
        widgets.add(getRow(i));
      }
    }
    Widget getRow(int i) {
      return GestureDetector(
        child: new Padding(
          padding:EdgeInsets.all(2.0),
          child:new Container(
            height: 40.0,
            color:Colors.blue,
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
            alignment: Alignment.center,
            child:new Text('row $i',textAlign: TextAlign.left,
    
            ),
          )
        ),
        onTap: (){
          setState(
            (){
              widgets.add(getRow(widgets.length + 1));
              print('row $i');
            }
          );
        },
      );
    }
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
        // titleSpacing: 0.0,
        automaticallyImplyLeading: false,
          title:new Text('Home')
        ),
        body: ListView.builder(
            itemCount:widgets.length,
            itemBuilder:(BuildContext context,int postion){
              return getRow(postion);
            }
          )
      );

    }
}