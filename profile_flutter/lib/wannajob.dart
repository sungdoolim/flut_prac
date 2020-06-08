import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';

class wannajob extends StatefulWidget {
  String desc;
  int count;

  wannajob(this.desc,{this.count=0});

  @override
  _wannajobState createState() => _wannajobState();
}

class _wannajobState extends State<wannajob> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("staris' first flutter app"),
        ),
        body:Center(
          child:InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                switch(widget.count){
                  case 0:return wannajob("프로그래밍 언어 중에서도 java언어를 사용하는 분야를 희망하며 이를 활용하는 웹/ 앱 개발 분야를 희망합니다.",count:1);
                  break;
                  case 1:return wannajob("프로그래밍 언어를 배우고자 하는 사람들을 대상으로 프로그래밍 언어를 가르쳐 주는 직무도 희망합니다.",count:2);
                  case -1: return wannajob("또는 학생들의 고민이나 이야기를 들어주는 상담 분야도 희망합니다."
                      "꼼꼼한 성격으로 문서 처리 업무도 잘할 자신 있습니다.",count:-2);
                  default:    if(widget.count<0){
                    return  MyHomePage(imgdir:"images/babyele.JPG",desc:"유연하면서도 명확히!",index:1);
                  }else{
                    return  MyHomePage();
                  }
                }

              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(widget.desc,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
              ],
            ),
          )
        )
    );
  }
}
