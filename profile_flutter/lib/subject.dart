import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
class subject extends StatefulWidget {
  String desc; int count;int isi=0;
  subject(this.desc,this.count, {this.isi=0});
  @override
  _subjectState createState() => _subjectState();
}

class _subjectState extends State<subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: isI(),
        body:Center(
            child:InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  switch(widget.count){
                    case 0:return subject("문제 해결을 위한 '자료 구조와 실습'"
                        "html/css/js등의 프론트 개발에 관한 기초를 배울 수 있고,"
                        " jsp와 JAVA언어를 이용하여 웹을 구성하는 법을 배우는 '웹 프로그래밍',"
                        " 데이터베이스의 이해와 SQL문의 이해를 위한 '데이터베이스 시스템', '데이터베이스 프로그래밍' 을 이수 했습니다.",1,isi:widget.isi);
                    case 1:return subject("위 교과목들을 최대한 활용하여 프로젝트를 진행하는 '공개 소프트웨어 프로젝트' 등의 전공 교과목을 이수했습니다.",2,isi:widget.isi);
                    case -1:return subject("교직이수 과목으로 교육심리, 학교폭력예방, 특수교육학개론, 교육학개론 등을 이수하였습니다.",-2,isi:widget.isi);
                    default:    if(widget.count<0){
                      return  MyHomePage(imgdir:"images/babyele.JPG",desc:"유연하면서도 명확히!",index:1,isi:widget.isi);
                    }else{
                      return  MyHomePage(isi:widget.isi);
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
  }   isI(){
    if(widget.isi==0) {
      return AppBar(
        title: Text("staris' first flutter app"),
      );
    }else{
      return CupertinoNavigationBar(
        middle: Text("staris' first flutter app"),
        transitionBetweenRoutes: true,

      );
    }
  }
}
