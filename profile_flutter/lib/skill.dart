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
                    case -1:return skill("교직이수를 하고 저 스스로 심리에 대한 공부를 하고 있기 때문에, 상대방이 고민을 털어놓을 때나 이야기를 할 때 상대가 어떤 감정을 느끼고 있는지, "
                        "숨겨진 의도가 있는지 등을 캐치하고 반응하면서 진심으로 경청할 수 있습니다.",-2);

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
