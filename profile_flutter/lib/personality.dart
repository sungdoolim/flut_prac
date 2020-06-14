import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'main.dart';
class personality extends StatefulWidget {
  String desc;
  int count;
  int isi=0;
  personality(this.desc,this.count, {this.isi=0});

  @override
  _personalityState createState() => _personalityState();
}

class _personalityState extends State<personality> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar:isI(),

//    AppBar(
//      title: Text("staris' first flutter app"),
//      actions: [
//        PopupMenuButton(
//          icon:Icon(Icons.add),
//          itemBuilder: (context){
//            return [PopupMenuItem(value:0,child:Text("?")),
//              PopupMenuItem(value:1,child:Text("2nd"))]
//            ;
//        },onSelected: (value){
//    if(value==0)print("00000");
//    else print("xxxxxx");
//    }
//        )
//      ],
//
//      //actions: [IconButton(icon: Icon(Icons.delete),),
//      //IconButton(icon:Icon(Icons.add))],
//    ),
        body:Center(
            child:InkWell(
              onTap: (){

                Navigator.push(context,MaterialPageRoute(builder: (context){
                  switch(widget.count){
                    case 0:return personality("런 성격의 단점을 보고, 고치려 했었지만 그러지 못했고 그러면 장점으로 만들자라는 생각을 했습니다. "
                        "목표 기준을 조금은 짧게 정하고, 정해진 기준을 다 한 후 , 그 다음 단계의 일을 진행하기 전에 먼저 했던 업무를 상기시키고 "
                        "천천히 다시 보는 식으로 이해하지 못한 부분을 이해하며, 업무를 보완하며 스스로 피드백을 하는 것 입니다.",1,isi:widget.isi);
                    break;
                    case 1:return personality("이 짧기에 스트레스와 피로는 덜 쌓이면서 , 업무를 확실히 이해 할 수 있으며, 업무 처리에 있어 빠른 진행 속도를 보이게 되었습니다.",2,isi:widget.isi);
                    case -1:return personality("집요합니다. 쉽게 상처를 받습니다. 신중해서 쉽게 결정을 못할 때가 종종 있습니다.",-2,isi:widget.isi);
                    default:
                    if(widget.count<0){
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
        ,
     /* bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.view_list),
              title:Text('1st')
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.view_list),
              title:Text('2nd')
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.view_list),
              title:Text('3th')
          ),
        ],
        onTap: (index){
          setState(() {
            _index=index;
            print(_index);
          });

        },
      ),*/
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
