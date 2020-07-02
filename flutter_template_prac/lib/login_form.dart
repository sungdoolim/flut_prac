import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class login_form extends StatefulWidget {
  @override
  _login_formState createState() => _login_formState();
}

class _login_formState extends State<login_form> {
  TextEditingController ctrl;
  TextEditingController ctrl2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("every Dongguk"),),
      body:Column(
        children: [
          TextField(
            controller: ctrl,
            decoration: InputDecoration(labelText: 'id'),
          ),
          TextField(
            controller: ctrl2,
            decoration:InputDecoration(labelText: 'pw'),
            obscureText: true,
          ),
          RaisedButton(child: Text("submit"),onPressed: (){
              String id=ctrl.text;
              String pw=ctrl2.text;

          },)
        ],
      )

    );
  }
}
