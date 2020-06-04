import 'package:flutter/material.dart';
class secondpage extends StatefulWidget {
  String msg;
  secondpage({this.msg="2"});
  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.msg),),
      body:Column(
        children: <Widget>[Row(
          children: <Widget>[Text("hi"),Text("hello")],
        ),Row(
          children: <Widget>[Text("hi"),Text("hello")],
        )],
      )
    );
  }
}
