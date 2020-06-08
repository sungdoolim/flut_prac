import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profileflutter/personality.dart';
import 'package:profileflutter/skill.dart';
import 'package:profileflutter/subject.dart';
import 'package:profileflutter/wannajob.dart';

import 'career.dart';
import 'growing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF9cf4ac),
        appBar: AppBar(
          title: Text("staris' first flutter app"),
        ),
        drawer: f(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/lsd.png'),
                radius: 300,
              ),
              Text(
                "\n명확하면서도 유연하게!",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              )
            ],
          ),
        ));
  }

  static Drawer f(context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
        children: [
        Container(
          height: 90,
          child: DrawerHeader(
          decoration: BoxDecoration(
          color: Colors.blue,
          ),child: Center(child: Text("list",)),
          ),
        ), ListTile(
            leading: Icon(Icons.message),
            title: Text('실습희망직무'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return wannajob("프로그래밍 언어를 사용하는 직무, 특히 소프트웨어 개발 분야를 희망합니다.");
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('이수 교과목'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){
              return subject("C언어를 숙지하기 위해 '기초 프로그래밍' 과목을"
                  " 이수하였고,Python언어를 위한 '파이선 기초',C++언어를 위해 '심화 프로그래밍', "
                  "JAVA언어를 위한 '객체지향 언어와 실습' , "
                  "전체적으로 프로그래밍 언어가 어떻게 구성되는지를 배우는 '프로그래밍 언어 개념'을 이수 했습니다.  ",0);
            }));
          },
          ),

          ListTile(
            leading: Icon(Icons.message),
            title: Text('전공 능력'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){
              return skill("누군가를 돕고, 이끌어가는 것을 좋아하기에 c, c++, java , python 언어 등, 전공 관련 교과목을 배우기를 희망하는 사람에게 잘 가르칠 수 있습니다.  ",0);
            }));
          },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('주요 활동 사항'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){
              return career("기본적으로는 기초가 중요하다는 마음으로 수업에 열심히 임하고 있으며 동아리 활동 및 교내 수업을 들으며 주요 활동들과"
                  " 개인 공부들을 깃허브 사이트(github.com/sungdoolim/)에 올려두어 복습과, 새 프로젝트 진행 시 참고 용도로 사용하고 있습니다.",0);
            }));
          },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('성장과정'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){
              return growing("대학교 3학년 때입니다. 진로에 대해 막막하고, 제대로 된 공부도 하지 않았던 상태로 재학중이었을 때, 동아리에서 선배 한분을 만났습니다. "
                  "같은 학번인데도 불구하고 , 앱 개발과 게임 개발에 능통하여 자체적으로 여러 프로그램을 만들었습니다. ",0);
            }));
          },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('성격의 장단점'),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){
              return personality("한 번 집중하여 어떤 일을 할 때, 스스로 정한 기준에 도달하기 전까지 하지 못하면 마음이 놓이지 않습니다.  "
                  "이런 성격은 분명한 단점이라고 생각했습니다. 스스로 정한 기준에 까지"
                  " 어떻게든 해낸다 해도 이해를 하지 못하고 해낸 적이 많아 다음 업무를 진행 할 수 없고, 오랜 작업에 스트레스와 피로도 쌓이기 때문입니다. ",0);
            }));
          },
          ),
      ],
    ));
  }
}
