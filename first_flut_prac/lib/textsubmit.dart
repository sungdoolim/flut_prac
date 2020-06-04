import 'package:firstflutprac/valid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'animationcontainer.dart';
import 'cupertino_page.dart';
class textsubmit extends StatefulWidget {
  @override
  _textsubmitState createState() => _textsubmitState();
}

class _textsubmitState extends State<textsubmit> {
  var textController=null;
  @override
  void initState() {
    textController =TextEditingController();
    //super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }
  final _formKey2=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("text")
      ),
      body:
        Form(
            key:_formKey2,
          child: Column(
            children: <Widget>[
              TextFormField(
                // ignore: missing_return
                validator: (value){
                  if(value.isEmpty){
                    return "emplty";
                  }
                },
              ),
            RaisedButton(child: Text("valid"),
            onPressed: (){
    if(_formKey2.currentState.validate()){
              Scaffold.of(_formKey2.currentContext).showSnackBar(SnackBar(content:Text("good job22x`")));}
            },)
            ,
            TextField(
              controller: textController,
              onChanged:(text) {
                print(text);
              },
              decoration: InputDecoration(
                labelText: "hi",
                hintText:"hello?"

              ),

            ),
            RaisedButton(child:Text("console"),
            onPressed: (){
            print(textController.text);
            showDialog(context: context, builder: (context){
              return AlertDialog(content:Text(textController.text));
            });
            },)],

          )

        )
    );
  }
}
