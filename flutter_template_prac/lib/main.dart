import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateprac/webView.dart';
import 'package:fluttertemplateprac/webView2.dart';
import 'package:google_sign_in/google_sign_in.dart'; // added
import 'package:firebase_auth/firebase_auth.dart'; // added
import 'NewMain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("hi..hello..")),
      body:Column(children: [
      RaisedButton(child:Text("naver_webview"),onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder:(context){
        return WView();
      }));


    },)


      ,
    RaisedButton(child:Text("everydongguk_webview"),onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder:(context){
    return WView2();
    }));


    },),
        RaisedButton(child:Text("new main"),onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder:(context){
            return main2();
          }));


        },),
      ],
      )
    );
  }
}
