import 'package:flutter/material.dart';
import 'package:practiceflut/secondpage.dart';

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
    return Scaffold(

        appBar: AppBar(title: Text("appbar"),),

        drawer: Drawer(

          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Text("header_drawer")),
              ListTile(
                title: Text("1st"),
                onTap: () {
                  String msg="1st";
                  print("1st");
                  Navigator.push(context,MaterialPageRoute(builder:(context){return secondpage(msg: msg);}));
                },
              ),
              ListTile(
                title: Text("2nd"),
                onTap: () {
                  print("2nd");
                },
              ),
            ],
          ),


        ),
        body: Builder(
            builder: (context) {
              return Column(children: <Widget>[RaisedButton(
                child: Text("1st toast"), onPressed: () {
                var snac = SnackBar(content: Text("1st!!!")
                  ,
                  action: SnackBarAction(label: "cancel", onPressed: () {
                    print("cancel!!");
                  },),);
                Scaffold.of(context).showSnackBar((snac));
              },), RaisedButton(child: Text("2nd"), onPressed: () {
                var snac = SnackBar(content: Text("2nd!!!"),
                  action: SnackBarAction(label: "cancel", onPressed: () {
                    print("cancel!!");
                  },),);
                Scaffold.of(context).showSnackBar((snac));
              },)
              ],);
            }

        )

    );
  }
}
