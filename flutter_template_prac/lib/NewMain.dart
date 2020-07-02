import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateprac/login_form.dart';
import 'package:fluttertemplateprac/register_form.dart';
import 'package:google_sign_in/google_sign_in.dart';
class main2 extends StatefulWidget {
  @override
  _main2State createState() => _main2State();
}

class _main2State extends State<main2> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final app=AppState(false, null);// 뒤에 우리가 만들었음
//  _delay(){// _ 는 private를 의미함
//    Future.delayed(Duration(seconds:1),(){//1초 후에는 로딩false
//      setState(()=>app.loading=false);
//    });
//  }
//  @override
//  void initState() {//처음에 빌드전에 한번 실행되는 메서드
//    // TODO: implement initState
//    super.initState();
//    _delay();//여기서 딜레이 한번 해보자
//  }

  @override
  Widget build(BuildContext context) {

      if(app.loading) return _loading();
      if(app.user==null) return _loginPage();
      else return _main();
  }
  Widget _loading(){
    return Scaffold(
      appBar:AppBar(
        title:Text('loading....')

      ),
      body:Center(
        child:CircularProgressIndicator()

      )
    );
  }
  Widget _loginPage(){
    return Scaffold(
        appBar:AppBar(
            title:Text("Login...")

        ),
        body:Center(
            child:Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('id'),Text('pw'),RaisedButton(
                    child:Text('login'), onPressed: (){
//                      setState(() {
//                        app.loading=true;
//                        app.user='my name';
//                        _delay();
//                      });
                  _signIn();
                  },
                  )
                ],
              )
            )

        )
    );
  }
  Widget _main(){
    return Scaffold(
      appBar: AppBar(
        title: Text('app.user'),
        actions:<Widget>[
          IconButton(icon:Icon(Icons.account_balance),onPressed: (){
//            setState(() {
//              app.loading=true;
//              app.user='';
//              _delay();
//            });
          _signOut();
          },)
        ]
      ),
      body:Center(child:Text('contents'))
    );

  }

 Future<String> _signIn()async{
    setState(()=>app.loading=true);
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth .idToken,);
    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;
setState(() {
  app.loading=false;
  app.user=user;
});
    return "success";
  }
  _signOut()async{
    await googleSignIn.signOut();
    setState(() {
      app.user=null;
    });
  }

}

class AppState{
  bool loading;
  FirebaseUser user;
  AppState(this.loading,this.user);

}