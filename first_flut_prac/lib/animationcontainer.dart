import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animationcon extends StatefulWidget {
  @override
  _animationconState createState() => _animationconState();
}

// ignore: camel_case_types
class _animationconState extends State<animationcon> {

  @override
  Widget build(BuildContext context) {
    double _a=100;
    double _b=100;

    //var random=Random();
    return   Scaffold(
      appBar: AppBar(title:Text("bar")),
      drawer:Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
                child:Text("header"),
            decoration:BoxDecoration(color:Colors.yellow)
            ),

            ListTile(
              title:Text("1st"),
              onTap:(){
                print("1st");
            }
            )
            ,
            ListTile(
                title:Text("2nd"),
                onTap:(){
                  print("2nd");
                }
            )
          ],
        )
      ),




        floatingActionButton: FloatingActionButton(
        onPressed: (){
      print("?");
      setState(() {
        final random=Random();
        _a=random.nextInt(300).toDouble();
        _b=random.nextInt(300).toDouble();

      });     print("$_a,$_b");
    },
    ),


    );
  }
}
