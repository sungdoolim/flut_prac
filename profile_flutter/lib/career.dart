import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
class career extends StatefulWidget {
  String desc;
  int count;
  int isi=0;
  career(this.desc,this.count, {this.isi=0});

  @override
  _careerState createState() => _careerState();
}

class _careerState extends State<career> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:isI(),
      body:Center(
          child:InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                switch(widget.count){
                  case 0:return career("팀을 이루어 '소프트웨어 개발 보안 코딩' 해커톤 대회에 참여한 경험이 있어 보안 분야로의 기본 역량을 갖추고 있습니다. ",1,isi:widget.isi);
                  break;
                  case 1:return career("전공 관련 동아리로는 교내 컴퓨터 동아리(DNA)에서 활동했습니다."
                      " 기초적인 프로그래밍 언어에 관한 스터디와 안드로이드, 스프링 프레임워크, 유니티 등의 스터디를 참여했습니다. ",2,isi:widget.isi);
                  case 2: return career("평소 악기를 다루는 취미를 가지고 있어 교내 밴드 동아리(아리랑)에서 부회장으로 활동하며 팀을 만들어 축제, 버스킹 등의 여러 팀 활동을 했었습니다.",3,isi:widget.isi);
                  case -1:return career("1년 휴학기간 동안 교육봉사활동 60시간을 이수하였고, 한국사자격증 3급을 땄습니다.\n현재 교직이수를 하고 있으며 6월달에 고등학교로 교생실습을 나갈 예정입니다.",-2,isi:widget.isi);
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
  }
   isI(){
    if(widget.isi==0) {
      return AppBar(
        title: Text("s"),
      );
    }else{
    return CupertinoNavigationBar(
      middle: Text("staris' first flutter app"),
      transitionBetweenRoutes: true,

    );
  }
  }
}
