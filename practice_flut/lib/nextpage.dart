import 'package:flutter/material.dart';
class nextpage extends StatefulWidget {
  @override
  _nextpageState createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("hi")),
      body:Center(
        child:Column(
          children: <Widget>[
            Text("column test"),
            Icon(Icons.add),
            RaisedButton(child:Icon(Icons.delete),
            onPressed: (){
              print("rbt clic");
            },)
          ],
        )


      )
    );
  }
}
