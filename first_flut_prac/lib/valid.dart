import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'animationcontainer.dart';
import 'cupertino_page.dart';

class valid extends StatefulWidget {
  @override
  _validState createState() => _validState();
}

class _validState extends State<valid> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("valid")),
      body:Form(
        key:_formKey,
        child:Column(
          children: <Widget>[
            TextFormField(
          // ignore: missing_return
          validator:(value){
            if(value.isEmpty){
              return "공백은 안되용";
    }
    }
      ),
            RaisedButton(onPressed: (){
            if(_formKey.currentState.validate()){
              //valid한 것임
            Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(content:Text("good job")));
            }
            },child:Text("완료"))
          ],
        )

      )
    );
  }
}
