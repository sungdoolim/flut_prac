import 'package:firstflutprac/dbspring.dart';
import 'package:firstflutprac/sqflite.dart';
import 'package:firstflutprac/sqflite_query.dart';
import 'package:firstflutprac/textsubmit.dart';
import 'package:firstflutprac/valid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'animationcontainer.dart';
import 'cupertino_page.dart';
import 'memo.dart';
class sqflite extends StatefulWidget {
  @override
  _sqfliteState createState() => _sqfliteState();
}

class _sqfliteState extends State<sqflite> {
  var m=Memo(id: 1, title:"1st",text:"first",createTime:"now",editTime:"some now");
  var m2=Memo(id: 1, title:"11st",text:"eleventh",createTime:"new",editTime:"new ver");
  var db=DBHelper();

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        RaisedButton(child: Text("insert"),onPressed: (){
          db.insertMemo(m);
        },),
        RaisedButton(child:Text("delete"),onPressed: (){
          db.deleteMemo(1);
        },),
        RaisedButton(child:Text("select"),onPressed: (){
          db.show();
        },),
        RaisedButton(child:Text("update"),onPressed: (){
          db.updateMemo(m2);
        },)
      ],)




    );
  }
}
