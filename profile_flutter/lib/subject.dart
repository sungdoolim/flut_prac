import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
class subject extends StatefulWidget {
  String desc; int count;
  subject(this.desc,this.count);
  @override
  _subjectState createState() => _subjectState();
}

class _subjectState extends State<subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      title: Text("staris' first flutter app"),
    ),
        body:Center(
            child:InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  switch(widget.count){
                    case 0:return subject("문제 해결을 위한 '자료 구조와 실습'"
                        "html/css/js등의 프론트 개발에 관한 기초를 배울 수 있고,"
                        " jsp와 JAVA언어를 이용하여 웹을 구성하는 법을 배우는 '웹 프로그래밍',"
                        " 데이터베이스의 이해와 SQL문의 이해를 위한 '데이터베이스 시스템', '데이터베이스 프로그래밍' 을 이수 했습니다.",1);
                    case 1:return subject("위 교과목들을 최대한 활용하여 프로젝트를 진행하는 '공개 소프트웨어 프로젝트' 등의 전공 교과목을 이수했습니다.",2);
                    default: return MyApp();
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
