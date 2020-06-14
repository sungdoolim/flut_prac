import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
class growing extends StatefulWidget {
  String desc;
  int count;
  int isi=0;
  growing(this.desc,this.count, {this.isi=0});
  @override
  _growingState createState() => _growingState();
}

class _growingState extends State<growing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: isI(),
        body:Center(
            child:InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  switch(widget.count){
                    case 0:return growing("그 분을 보고 굉장히 멋있다고 생각했습니다. 그 분이 해주신 말 중에 ‘컴퓨터 공학과로 왔으면 전공 관련해서 "
                        "여러 가지를 시도 해보고 재밌는 것을 일단 해봐라’고 했습니다. 저에게는 너무나도 값진 말씀이었습니다. ",1,isi:widget.isi);

                    case 1:return growing("때문에 그 이후 방학 때 학원도 다니고, 전공 과목 수강도 일부러 다양한 분야를 들었습니다. 동아리에서도 접해보지 않은 여러 분야에 관한 스터디를 참여하며 재 꿈과 흥미를 알고자 노력했습니다.  ",2,isi:widget.isi);

                    case 2:return growing("같은 시기에 부모님의 말씀도 있었습니다. 적성에 맞는 것을 찾는 게 아니라 하는 일을 적성에 맞게 하는 것이라고 하셨습니다.",3,isi:widget.isi);
                    case 3: return growing("이러한 경험이 있기에 새로운 일을 하는데 있어 두려움이 없으며, 모든 일을 제 전공인 것 처럼 잘 처리 할 수 있습니다.",4,isi:widget.isi);
                    case-1:return growing("2학년 2학기에 교직이수에 합격 후 1년 휴학을 하며 휴식기를 가졌습니다.현재 4학년 재학 중입니다",-2,isi:widget.isi);
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
