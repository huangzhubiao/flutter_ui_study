import 'package:flutter/material.dart';
import 'package:test_ui_proj/MainPage/StudyContainerPage.dart';


class HomePage extends StatefulWidget{

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{

// TODO: implement wantKeepAlive
  @override
  bool get wantKeepAlive => true;

    List widgets = [];
    void initState() {
      super.initState();
      for(int i = 0; i < 50; i++){
        widgets.add(getRow(i));
      }
    }
    Widget getRow(int i) {

      var name;
      if(i == 0){
        name = 'Container';
      }else if(i == 1){
        name = "Padding、Align、Center";
      }else if(i == 2){
        name = 'FittedBox、AspectRatio、ContstrainedBox';
      }else{
        name = "row $i";
      }


      return GestureDetector(
        child: new Padding(
          padding:EdgeInsets.all(2.0),
          child:new Container(
            height: 50.0,
            color:Colors.lightGreen,
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
            alignment: Alignment.center,
            child:new Text('row $name',textAlign: TextAlign.center,
            ),
          )
        ),
        onTap: (){
          Navigator.of(context).push(new PageRouteBuilder(
                pageBuilder: (BuildContext context,
                    Animation<double> animation,
                Animation<double> secondaryAnimation) {
                return new StudyContainerPage();
                }
              ));
          // setState(
          //   (){
          //     widgets.add(getRow(widgets.length + 1));
          //     print('row $i');
          //     Navigator.of(context).push(new PageRouteBuilder(
          //       pageBuilder: (BuildContext context,
          //           Animation<double> animation,
          //       Animation<double> secondaryAnimation) {
          //       return new StudyContainerPage();

          //       }
          //     ));
          //   }
          // );
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