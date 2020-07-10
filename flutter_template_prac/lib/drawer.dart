import 'package:flutter/material.dart';
class drawer_temp extends StatefulWidget {
  @override
  _drawer_tempState createState() => _drawer_tempState();
}

class _drawer_tempState extends State<drawer_temp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child:ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

              DrawerHeader(
                  child:Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(Icons.account_balance),
                        Text("header"),
                      ],
                    ),
                  ),
                  decoration:BoxDecoration(color:Colors.blue),
                  padding:EdgeInsets.zero,
                margin:EdgeInsets.zero,
              ),
              ListTile(
                  title:Text("1st"),
                  onTap:(){
                    print("1st");
                    Navigator.pop(context);// 누르면 drawer접기
                  }
              )
              ,
              ListTile(
                  title:Text("2nd"),
                  onTap:(){
                    print("2nd");
                    Navigator.pop(context);// 누르면 drawer접기
                  }
              )
            ],
          )
      );


  }
}
