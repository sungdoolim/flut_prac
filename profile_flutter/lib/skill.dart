import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
class skill extends StatefulWidget {
  String desc;
  int count;
  skill(this.desc, this.count);
  @override
  _skillState createState() => _skillState();
}

class _skillState extends State<skill> {
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
                    case 0:return skill(" c,c++,c#,java,python등의 프로그래밍 언어로 여러 문제를 해결하는 알고리즘을 구현 할 수 있으며, "
                        "특히 java 언어를 기반으로 하는 웹이나 안드로이드 기반 앱 백엔드 개발에 자신 있습니다. "
                        "웹 개발에 큰 흥미를 느껴 html/css/js를 공부하여 기본적인 프론트 엔드 개발 지식이 있으며 jsp과 servlet을 활용해 웹 구성이 가능하고, "
                        "나아가서 java-spring 프레임 워크를 사용할 줄 알기에 mvc패턴에 대해 이해를 하고 있고 구현할 수 있습니다.",1);
                    break;
                    case 1:return skill("개인적으로 공부한 내용을 github에 저장하여 관리해본 경험이 있기에 github를 통한 팀 협업이 가능합니다.",2);
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
