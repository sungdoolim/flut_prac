import 'dart:convert';

import 'package:firstflutprac/textsubmit.dart';
import 'package:firstflutprac/valid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chips_input/flutter_chips_input.dart';
import 'animationcontainer.dart';
import 'cupertino_page.dart';
import 'package:http/http.dart' as http;

class dbspring extends StatefulWidget {
  @override
  _dbspringState createState() => _dbspringState();
}

class _dbspringState extends State<dbspring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:FutureBuilder(
          future: fetch(),
          builder: (context,AsyncSnapshot snap){
            return(Text(snap.data.toString()));
          },
        )
      )


    );
  }
  Future fetch() async{/*
  @RequestMapping("/andtest")
	public @ResponseBody JSONObject andtest(String id,String pw) {
		System.out.println("getpw");
		System.out.println(id);System.out.println(pw);
			 JSONObject jsonMain = new JSONObject(); // json
			 String pwd="Abdeok odielswo dj244 d";
			 jsonMain.put("Bpw", pwd);
			 jsonMain.put("Bid","hihello");
			// System.out.println(pwd);
			return jsonMain;

	}
	*/
    String url="http://192.168.56.1:8052/web/andtest.json";
    var res=await http.get(url);
    var a=json.decode(res.body);
    print(a.toString());
   print(a.length);
   print("d${a["Bid"]}");// 배열로 받는 듯 하네
     return a;

   /*String url="http://192.168.56.1:8052/web/androidtest.json";
   var res=await http.get(url);
   var a=jsonDecode(res.body.toString());
   var b=a["sendData"];
   print(b);
   var c=b.length;
   print("길이는 ${c}");
   for(var i=0;i<c;i+=1){
     print("${b[i]["f"]}, ${b[i]["l"]}");
   }
   return a;*/   // 리스트로 뽑아오기
    /*
    String url="http://192.168.56.1:8052/web/androidtest.json";
   await http.post(url,body:{"id":"flutter","pw":"플루토"});
*/// 데이터 보내기 성공


  }
}
