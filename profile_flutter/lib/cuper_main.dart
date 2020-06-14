import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profileflutter/cuper_prac.dart';
import 'package:profileflutter/personality.dart';
import 'package:profileflutter/skill.dart';
import 'package:profileflutter/subject.dart';
import 'package:profileflutter/wannajob.dart';

import 'career.dart';
import 'growing.dart';
class FirstPage extends StatefulWidget {
  String desc;
  String imgdir;
  int index;

  FirstPage(
      {this.desc = "명확하면서 유연하게!",
        this.imgdir = "images/lsd.png",
        this.index = 0});
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.imgdir),
              radius: 300,
            ),
            Text(
              "\n${widget.desc}",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );

  }
   isI(){
    return CupertinoNavigationBar(

      middle: Text("staris' first flutter app"),
      transitionBetweenRoutes: true,
      trailing: Container(
        child: Builder(
          builder: (context) {
            return CupertinoButton(

              child: Icon(CupertinoIcons.add),
              onPressed: (){
                Scaffold.of(context).openEndDrawer();
              },
            );

          },
        ),
      ),
    );
  }

}
