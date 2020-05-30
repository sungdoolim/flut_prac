import 'package:flutter/material.dart';

import 'nextpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage('Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  var title;

  MyHomePage(this.title);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        floatingActionButton: FloatingActionButton(child:Icon(Icons.delete),
        onPressed: (){
          print("float bt");
          Navigator.push(context,MaterialPageRoute(builder:(context){
return nextpage();
          }));


      },),
          appBar: AppBar(title:Text("prac_flut")),
          body:Center(
              child:Column(
              children:<Widget>[
              Text("column prac"),
            Text("column practice"),
                RaisedButton(child:Text("bt1"),
                onPressed: (){print("bt1 clic");},),
                RaisedButton(
                child:Icon(Icons.add),
                onPressed: (){print("bt2 clic");},)


          ]
          )
          )







      );
  }
}
