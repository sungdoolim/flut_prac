import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateprac/bottom_temp.dart';

import 'drawer.dart';

class main2 extends StatefulWidget {
  @override
  _main2State createState() => _main2State();
}

class _main2State extends State<main2> {



  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("template"),),
        body:Stack(
          children: <Widget>[
            Center(
              child: new Image.asset(
                'images/dgu.JPG',
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,
              ),
            ),
           Column(
                children: [Text("hi"),Text("hello")],
              )


          ],
        ),


        drawer: drawer_temp(),
        bottomNavigationBar:bottom_temp(),

    );
  }
}
