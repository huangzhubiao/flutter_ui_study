import 'package:flutter/material.dart';


class ForgetPassword extends StatefulWidget{
  _InitUI createState() => _InitUI();
}

class _InitUI extends State<ForgetPassword>{

    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('找回忘记密码'),
        ),
        body: new Center(
            child: new Text('找回密码'),
        ),
      );
    }


}