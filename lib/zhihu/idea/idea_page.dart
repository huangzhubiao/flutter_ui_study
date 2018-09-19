import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbar/flutter_statusbar.dart';


class IdeaPage extends StatefulWidget {
  _IdeaPageState createState() => _IdeaPageState();
}
class _IdeaPageState extends State<IdeaPage>{
  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    return new ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
      Container(
        color: Colors.grey[300],
        child:new Column(
        children: <Widget>[
        new Container(
          margin: EdgeInsets.only(bottom:8.0),
          height: height / 3.0 - 6,
          decoration: new BoxDecoration(
            image:new DecorationImage(
              image:AssetImage('images/shentan.png',
              ),
            )
          ),
          alignment: Alignment.topRight,
          child: new Container(
            padding: EdgeInsets.only(top:55.0,right:30.0),
            height:30.0,
            child:new Text('注销',
            style: TextStyle(
              fontSize:18.0,
              color: Colors.white,
            ),),
          ),
       
        ),
        new Container(
          margin: EdgeInsets.only(bottom:8.0,left: 8.0,right:8.0),
          // color:Colors.orange,
          decoration: new BoxDecoration(
            color: Colors.white,
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          ),
          height: height / 3.0 + 6,
          child: Column(
            children:<Widget>[
              new Container(
                color: Colors.white24,
                width: 200.0,
                height: height/3.0 / 5.0,
                child:new Center(
                  child:new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      new Image.asset(
                        'images/实名认证1@2x.png',
                      ),
                      new Container(
                        width:20.0,
                      ),
                      new Text(
                        '实名认证',
                        style: new TextStyle(
                          fontSize: 20.0,
                        ),
                      ), 
                    ]
                  )
                ),
              ) ,
              new Container(
                height: 0.1,
                color: Colors.black,
              ),
              new Container(
                margin: EdgeInsets.only(top:8.0),
                height: 1.5 * (height/3.0 / 5.0),
                child: new Image.asset(
                  'images/实名认证2@2x.png'
                ),
              ),
              new Container(
                child: new Text(
                  '扫描给客户绑定设备',
                  style:new TextStyle(
                    fontSize:18.0,
                  )
                ),
              ),
              new OutlineButton(
                
                borderSide:new BorderSide(
                  color: Colors.deepOrange[300],
                  ),
                child: new Text(
                  '扫码实名',
                  style:TextStyle(
                    color:Colors.deepOrange[300],
                    fontSize:18.0,
                  )
                  ), onPressed: () {},
              )
            ],
          ),
        ),
        new Container(
          margin: EdgeInsets.only(bottom:8.0,left: 8.0,right:8.0),
          // color:Colors.orange,
          decoration: new BoxDecoration(
            color: Colors.white,
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          ),
          height: height / 3.0 + 6,
          child: Column(
            children:<Widget>[
              new Container(
                color: Colors.white24,
                width: 200.0,
                height: height/3.0 / 5.0,
                child:new Center(
                  child:new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      new Image.asset(
                        'images/实名认证1@2x.png',
                      ),
                      new Container(
                        width:20.0,
                      ),
                      new Text(
                        '实名认证',
                        style: new TextStyle(
                          fontSize: 20.0,
                        ),
                      ), 
                    ]
                  )
                ),
              ) ,
              new Container(
                height: 0.1,
                color: Colors.black,
              ),
              new Container(
                margin: EdgeInsets.only(top:8.0),
                height: 1.5 * (height/3.0 / 5.0),
                child: new Image.asset(
                  'images/实名认证2@2x.png'
                ),
              ),
              new Container(
                child: new Text(
                  '扫描给客户绑定设备',
                  style:new TextStyle(
                    fontSize:18.0,
                  )
                ),
              ),
              new OutlineButton(
                
                borderSide:new BorderSide(
                  color: Colors.deepOrange[300],
                  ),
                child: new Text(
                  '扫码实名',
                  style:TextStyle(
                    color:Colors.deepOrange[300],
                    fontSize:18.0,
                  )
                  ), onPressed: () {},
              )
            ],
          ),
        )
      ],
    ),
    )


      ],

    );
  }
}