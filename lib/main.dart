import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:test_ui_proj/DemoPage.dart';
import 'package:test_ui_proj/Mypage1.dart';
import 'package:test_ui_proj/ForgetPassword.dart';
import 'package:test_ui_proj/zhihu/index/index_page.dart';

void main() => runApp(new ZhiHuApp());
// void main() {
//   runApp(new DemoApp());
// }
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar:new AppBar(
          title: new Text('登录'),
        ),
        body: LoginUI(),
      ),
      routes: <String,WidgetBuilder>{
        '/a':(BuildContext context) => Mypage1('登录成功'),
        '/ForgetPwd':(BuildContext context) => ForgetPassword(),
      },
    );
  }
}

class LoginUI extends StatelessWidget{
  LoginUI():super();
  TextEditingController _phonecontroller = new TextEditingController();
  TextEditingController _pwdcontroller = new TextEditingController();
  //跳转登录成功界面
  _pushLoginSuccessUI(BuildContext context,String username,String password){
    // Navigator.of(context).pushNamed('/a');
    Navigator.of(context).push(new PageRouteBuilder(
                opaque: false,
                pageBuilder: (BuildContext context, _, __) {
                  return new Mypage1('登录成功');
                },
    ));
  }

  @override
  Widget build(BuildContext context){
    return new ListView(
          children: <Widget>[
            new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                new Padding(
                    padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 15.0),
                    child: new Stack(
                      alignment: new Alignment(1.0, 1.0),
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            new Padding(
                              padding:
                                  new EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                              child: new Image.asset(
                                'images/icon_username.png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            new Expanded(
                              child: new TextField(
                                controller: _phonecontroller,
                                keyboardType: TextInputType.phone,
                                // cursorColor: Colors.black,
                                decoration: new InputDecoration(
                                  hintText: '请输入登录账号',
                                  // border:InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        new IconButton(
                        icon: new Icon(Icons.clear, color: Colors.black45),
                        onPressed: () {
                          _phonecontroller.clear();
                        },
                      ),
                      ],
                    ),
                ),
                new Padding(
                    padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),

                    child:new Stack(
                      alignment:new Alignment(1.0, 1.0),
                      children: <Widget>[
                        
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new Padding(
                              padding:
                                  new EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                              child: new Image.asset(
                                'images/icon_password.png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            new Expanded(
                              child: new TextField(
                                controller: _pwdcontroller,
                                keyboardType: TextInputType.phone,
                                
                                decoration: new InputDecoration(
                                  hintText: '请输入密码',
                                ),
                              ),
                            ),
                          ],

                        ),
                        new IconButton(
                          icon: new Icon(Icons.clear, color: Colors.black45),
                        onPressed: () {
                          _pwdcontroller.clear();
                        },
                        )
                      ],

                    ),
                ),
                new Padding(
                  padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Expanded(
                        child:new Material(
                          borderRadius:BorderRadius.circular(30.0),
                          color: Colors.blue,
                          elevation: 3.0,
                            child: new MaterialButton(
                            child: new Text(
                              '登录',
                              style: new TextStyle(
                                color:Colors.white,
                                fontSize:24.0,
                              ),
                            ),
                            onPressed: () {
                              _pushLoginSuccessUI(context, _phonecontroller.text, _pwdcontroller.text);
                            },
                        ),
                        )
                        
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        new Expanded(
                          child:new FlatButton(
                            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                            child: new Text(
                              '忘记密码',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color:Colors.redAccent,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).pushNamed('/ForgetPwd');
                            },
                          ),
                      ),
                      new Expanded(
                          child:new FlatButton(
                            padding: new EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                            child: new Text(
                              '注册',
                              textAlign: TextAlign.right,
                              style: new TextStyle(
                                color:Colors.redAccent,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: (){},
                          ),
                      ),
                    ],
                  ),
                ),
              ],
              
            ),
          ],
        );
  }
}




class DemoApp extends StatelessWidget{
  DemoApp({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home:DemoPage(),
      routes: <String,WidgetBuilder>{
        '/a':(BuildContext context) => Mypage1('147852'),
      },
      );
  }
}

class ZhiHuApp extends StatelessWidget{
  ZhiHuApp({Key key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "知乎-高仿版",
      home: new Index(),
    );
  }
}