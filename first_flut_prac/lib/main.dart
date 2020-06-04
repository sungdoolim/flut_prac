import 'package:firstflutprac/dbspring.dart';
import 'package:firstflutprac/sqflite.dart';
import 'package:firstflutprac/textsubmit.dart';
import 'package:firstflutprac/valid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'animationcontainer.dart';
import 'cupertino_page.dart';

void main() {
  List<dynamic> a = [];
  a.add("value");
  a.add(32);
  var b = 23;
  a.add(b);

  print(a[2] + a[1]);





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
        home: firstClass("staris love "));
  }
}

class firstClass extends StatefulWidget {
  final String name;

  firstClass(this.name);

  @override
  _firstClassState createState() => _firstClassState();
}

class _firstClassState extends State<firstClass> {
  String _name2 = "hama";
  int count = 0;

  @override
  Widget build(BuildContext context) {
    var a=Text("d");
    var b=RaisedButton(
      child: Text("textsubmit"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return textsubmit();
            },
          ),
        );}
      );
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _firstfunc,
        ),
        appBar: AppBar(title: Text("staris app"),),
        body: Builder(
          builder: (context) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child:Text("sqflite"),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){

                      return sqflite();}));
                  },
                ),
                RaisedButton(
                  child:Text("dbspring"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return dbspring();
                        },
                      ),
                    );
                  },
                ),
                RaisedButton(
                  child: Text("textsubmit"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return textsubmit();
                        },
                      ),
                    );
                  },
                ),
                RaisedButton(
                  child: Text("valid"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return valid();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text("snackbar"),
                  onPressed: () {
                    final snac = SnackBar(
                      content: Text("Toast???"),
                      action: SnackBarAction(
                        label: "cancel",
                        onPressed: () {
                        //  print("취소");
                        },
                      ),
                    );

                    Scaffold.of(context).showSnackBar(snac);
                  },
                ),
                Text(_name2),
                Text(widget.name),
                Text('$count'),
                RaisedButton(
                  child: Text("binpage"),
                  onPressed: () {
                    Navigator.push(context,
                        // ignore: missing_return
                        MaterialPageRoute(builder: (context) {
                      return CupertinoPage();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text("list"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return animationcon();
                    }));
                  },
                )
              ],
            ));
          },
        ));
  }

  void _firstfunc() {
    setState(() {
      count++;
      if (_name2 == "hama") {
        _name2 = "gagueng";
      } else {
        _name2 = "hama";
      }
    });
  }

  void _next() {
    setState(() {});
  }
}
