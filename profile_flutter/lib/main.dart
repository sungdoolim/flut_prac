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
    return MaterialApp(
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
  String desc;
  String imgdir;
  int index;

  MyHomePage(
      {this.desc = "명확하면서 유연하게!",
      this.imgdir = "images/lsd.png",
      this.index = 0});

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
      drawer: f(context, widget.index),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.imgdir),
              radius: 300,
            ),
            Text(
              "\n${widget.desc}",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list), title: Text('1st')),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list), title: Text('2nd')),
        ],
        onTap: (index) {
          setState(() {
            widget.index = index;
            print(widget.index);
          });
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyHomePage();
              }));
              break;

            default:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyHomePage(
                    imgdir: "images/babyele.JPG",
                    desc: "유연하면서도 명확히!",
                    index: 1);
              }));
          }
        },
      ),
    );
  }

  static Drawer f(context, int index) {
    switch (index) {
      case 1:
        return Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.add),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [Text("hi"), SizedBox(width:10),Text("hello?")],
                      ),
                    )
                  ],
                )),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('실습희망직무'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return wannajob("희망 직무는 초중고등 수학 문제를 풀이하거나 이와 관련된 직무를 희망합니다.",
                      count: -1);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('이수 교과목'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return subject(
                      "미적분학 1,2, 정수론, 계산수학1,2, 수학교육론, 현대대수학 수학과 전공과목을 이수하였습니다.",
                      -1);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('전공 능력'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return skill(
                      "수학과 전공 능력을 살려서 수학 문제 풀이, 문제 만들기, 오류 검토 등을 할 수 있습니다. ",
                      -1);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('주요 활동 사항'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return career(
                      "수학과에 재학하면서 2016년 1학기, 2학기, 2017년 1학기, 2019년 1학기 성적우등생 수상으로 장학금을 수여받았습니다.",
                      -1);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('성장과정'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return growing(
                      "어렸을 때는 조부모님 밑에서 자랐습니다. 그래서 지금도 일주일에 한번씩 조부모님 댁에 방문하면서 말상대가 되어드립니다."
                      "인문계 고등학교에 진학하여 공부와 내신에 신경쓰며 동국대학교 수학과에 입학했습니다.",
                      -1);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('성격의 장단점'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return personality(
                      "꼼꼼하고 성실합니다. 계획적입니다. 경청을 잘 합니다.. 호불호가 강한 편입니다. 화를 잘 내지 않습니다. ",
                      -1);
                }));
              },
            ),
          ],
        ));
        break;
      default:
        return Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.add),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [Text("hi"),SizedBox(width:10), Text("hello?")],
                          ),
                        )
                      ],
                    )),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('실습희망직무'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return wannajob("프로그래밍 언어를 사용하는 직무, 특히 소프트웨어 개발 분야를 희망합니다.");
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('이수 교과목'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return subject(
                      "C언어를 숙지하기 위해 '기초 프로그래밍' 과목을"
                      " 이수하였고,Python언어를 위한 '파이선 기초',C++언어를 위해 '심화 프로그래밍', "
                      "JAVA언어를 위한 '객체지향 언어와 실습' , "
                      "전체적으로 프로그래밍 언어가 어떻게 구성되는지를 배우는 '프로그래밍 언어 개념'을 이수 했습니다.  ",
                      0);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('전공 능력'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return skill(
                      "누군가를 돕고, 이끌어가는 것을 좋아하기에 c, c++, java , python 언어 등, 전공 관련 교과목을 배우기를 희망하는 사람에게 잘 가르칠 수 있습니다.  ",
                      0);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('주요 활동 사항'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return career(
                      "기본적으로는 기초가 중요하다는 마음으로 수업에 열심히 임하고 있으며 동아리 활동 및 교내 수업을 들으며 주요 활동들과"
                      " 개인 공부들을 깃허브 사이트(github.com/sungdoolim/)에 올려두어 복습과, 새 프로젝트 진행 시 참고 용도로 사용하고 있습니다.",
                      0);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('성장과정'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return growing(
                      "대학교 3학년 때입니다. 진로에 대해 막막하고, 제대로 된 공부도 하지 않았던 상태로 재학중이었을 때, 동아리에서 선배 한분을 만났습니다. "
                      "같은 학번인데도 불구하고 , 앱 개발과 게임 개발에 능통하여 자체적으로 여러 프로그램을 만들었습니다. ",
                      0);
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('성격의 장단점'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return personality(
                      "한 번 집중하여 어떤 일을 할 때, 스스로 정한 기준에 도달하기 전까지 하지 못하면 마음이 놓이지 않습니다.  "
                      "이런 성격은 분명한 단점이라고 생각했습니다. 스스로 정한 기준에 까지"
                      " 어떻게든 해낸다 해도 이해를 하지 못하고 해낸 적이 많아 다음 업무를 진행 할 수 없고, 오랜 작업에 스트레스와 피로도 쌓이기 때문입니다. ",
                      0);
                }));
              },
            ),
          ],
        ));
    }
  }
}
